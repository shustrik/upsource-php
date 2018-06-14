FROM jetbrains/upsource:2018.1.357

USER root

RUN apt-get update && \
    apt-get install -y apt-transport-https && \
    apt-get install -y curl && \
    apt-get install -y wget && \
# install php
    apt-get install -y gnupg && \
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    sh -c 'echo "deb https://packages.sury.org/php/ stretch main" > /etc/apt/sources.list.d/php.list' && \
    apt install -y php7.1-apcu php7.1-bcmath php7.1-cli php7.1-curl  php7.1-gd php7.1-intl php7.1-gmp php7.1-intl &&\
    apt install -y php7.1-mcrypt php7.1-pdo php7.1-soap php7.1-xml php7.1-zip php7.1-simplexml php7.1-mbstring php7.1-gd

USER jetbrains
