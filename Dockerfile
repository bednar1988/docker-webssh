FROM ubuntu:latest
WORKDIR webssh
COPY . /webssh
RUN apt-get update && apt-get install -y python3.4 python3-pip
RUN pip3 install webssh
EXPOSE 443
CMD ["wssh", "--address=0.0.0.0", "--sslport=443", "--certfile=/webssh/public.pem", "--keyfile=/webssh/private.key"]
