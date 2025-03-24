# DockerOVPNClient
Connect to OpenVPN server using Docker

This tool is build to specifically connect to a remote server using SSH over an OpenVPN tunnel (hosted on the same machine).
If you want to use this you can change the remote username for the SSH connection inside the connect.sh file. The IP address should be fine, otherwise just connect inside the container and look for the tun0 interface.

## Steps

Add configuration file *.ovpn inside the config folder with name config.ovpn (if you want to use a different name, change it also in the Compose file).

Then proceed with the usual make commands: build, up, down.

For proxy: make start-proxy, and inside ssh connection start the firefox container inside server.
