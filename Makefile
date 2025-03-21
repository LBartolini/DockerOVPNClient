.DEFAULT_GOAL := up

build:
	docker compose build

up:
	docker compose up -d
	sleep 2
	docker compose exec -it ssh-vpn-connection ./connect.sh

down:
	docker compose down --rmi 'local'

clean:
	rm -f config/*.conf