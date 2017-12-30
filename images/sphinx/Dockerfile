FROM alpine:3.6

ADD sphinx.conf /etc/sphinx/sphinx.conf
ADD ./ /root/sh

RUN apk add --update mysql-client ca-certificates openssl sphinx dcron tzdata\
    && mkdir -p /var/lib/sphinx \
    && mkdir -p /var/lib/sphinx/data \
    && mkdir -p /var/log/sphinx \
    && mkdir -p /var/run/sphinx

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone && apk del tzdata

EXPOSE 9306

#CMD searchd --nodetach
CMD ["/root/sh/start.sh"]
