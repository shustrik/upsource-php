FROM jetbrains/upsource:2018.2.1013

USER root

RUN apt-get update && \
    apt-get install -y apt-transport-https && \
    apt-get install -y curl && \
    apt-get install -y wget && \
# install php
    apt-get install -y gnupg && \
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    sh -c 'echo "deb https://packages.sury.org/php/ stretch main" > /etc/apt/sources.list.d/php.list' && \
    apt update && \
    apt install -y gcc make autoconf libc-dev pkg-config php7.2-dev php7.2-apcu php7.2-bcmath php7.2-cli php7.2-curl  php7.2-gd php7.2-intl php7.2-gmp php7.2-intl &&\
    apt install -y php7.2-pdo php7.2-soap php7.2-xml php7.2-zip php7.2-simplexml php7.2-mbstring php7.2-gd && \
    apt install -y libmcrypt-dev && \
    pecl install mcrypt-1.0.1 && \
    apt remove -y gcc make autoconf libc-dev pkg-config


USER jetbrains
