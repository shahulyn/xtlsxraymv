# Run container
sudo docker run -d \
--privileged \
--log-driver none \
--restart always \
--cap-add=NET_ADMIN \
-p 443:443/tcp \
--name xtlsxraymv xtlsxraymv

sudo docker network connect amnezia-dns-net xtlsxraymv

# Create tun device if not exist
sudo docker exec -i xtlsxraymv bash -c 'mkdir -p /dev/net; if [ ! -c /dev/net/tun ]; then mknod /dev/net/tun c 10 200; fi'

# Prevent to route packets outside of the container in case if server behind of the NAT
sudo docker exec -i xtlsxraymv sh -c "ifconfig eth0:0 158.178.225.124 netmask 255.255.255.255 up"

