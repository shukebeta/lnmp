# Dockerfile  file

FROM phpdockerio/php7-fpm

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y libpng12-dev libjpeg-dev \
    libmemcached11 libmemcached-dev php7.0-mysql php7.0-bcmath php7.0-dev php7.0-gd \
    php7.0-memcached php7.0-mcrypt php7.0-redis php7.0-xdebug php7.0-mbstring\
    vim libfreetype6-dev mysql-client unzip cron locales graphviz rsyslog \
  && rm -rf /var/lib/apt/lists/*

RUN sed -i s/\#cron\\.\\*/cron.*/ /etc/rsyslog.conf \
    && sed -i  s/\\/var\\/log\\/cron\\.log/\\/data\\/cron\\.log/ /etc/rsyslog.conf \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen --purge en_US.UTF-8 \
  && dpkg-reconfigure --frontend=noninteractive locales \
  && update-locale LANG=en_US.UTF-8

# sudo apt install php7.0 php7.0-cli php7.0-common php7.0-fpm php7.0-imap php7.0-json
# php7.0-mbstring php7.0-opcache php7.0-readline php7.0-xml

RUN cd /root && curl -LO https://github.com/longxinH/xhprof/archive/master.zip \
  && unzip master.zip && cd xhprof-master/extension && phpize \
  && ./configure --with-php-config=/usr/bin/php-config && make && make install \
  && rm -rf /root/*

RUN curl -LO https://phar.phpunit.de/phpunit.phar && chmod +x phpunit.phar && mv phpunit.phar /usr/local/bin/phpunit

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

COPY ./config/start.sh /root

# ========== the below is console setup ============================================================================

# setup timezone
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["/root/start.sh"]
