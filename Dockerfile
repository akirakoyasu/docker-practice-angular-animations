FROM ubuntu

RUN sed -i -e 's!mesg n || true!mesg n 2>/dev/null || true!' /root/.profile
RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%g" /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
      build-essential \
      ca-certificates \
      curl

RUN curl -sSL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get install -y --no-install-recommends \
      nodejs

RUN npm i @angular/cli -g

WORKDIR /var/lib/ng
