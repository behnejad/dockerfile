// pihole
sudo docker run --name pihole --network dicker --ip 192.168.88.100 \
    -p 53:53/tcp -p 53:53/udp -e CORS_HOSTS="example.com" -e VIRTUAL_HOST="pihole.lan" \
    -e PROXY_LOCATION="pihole.lan" -e WEBPASSWORD="webpassword" -e TZ="Asia/Tehran" \ 
    -d --restart=unless-stopped pihole/pihole:latest
