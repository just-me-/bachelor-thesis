FROM debian:buster

RUN apt-get update && \
    apt-get install -y texlive-full && \
    apt-get purge -y *-doc && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
