.DEFAULT_GOAL := up

build:
	docker compose build

up: start-vpn start-proxy start-ssh
	
start-vpn:
	docker compose up -d openvpn-client

start-ssh:
	docker compose up -d ssh-vpn-connection
	sleep 2
	docker compose exec -it ssh-vpn-connection ./connect.sh

start-proxy:
	docker compose up -d nginx-proxy
	sleep 2
	docker exec -it openvpn-client iptables -t nat -A PREROUTING -p tcp --dport 5800 -j REDIRECT --to-port 5800

down:
	docker compose down --rmi 'local'

clean:
	rm -f config/*.conf