FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y netcat-openbsd fortune cowsay && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
