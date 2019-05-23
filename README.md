# docker-simple

# generate slef signed cert
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private.key -out /etc/ssl/public.pem

# build docker image
docker build --tag webssh .

#deploy container
docker run --restart=always -d -p 8443:443 webssh
