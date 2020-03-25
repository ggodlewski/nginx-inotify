FROM nginx:alpine
MAINTAINER Grzegorz Godlewski <gg@gitgis.com>

RUN apk add inotify-tools
RUN apk add certbot python-certbot-nginx

COPY nginx.run /nginx.run
RUN chmod +x /nginx.run

COPY certbot-renew.sh /etc/periodic/daily/certbot-renew.sh
RUN chmod +x /etc/periodic/daily/certbot-renew.sh

EXPOSE 80
EXPOSE 443

CMD /nginx.run
