FROM nginx:alpine
MAINTAINER Grzegorz Godlewski <gg@gitgis.com>

RUN apk add inotify-tools

COPY nginx.run /nginx.run
RUN chmod +x /nginx.run

EXPOSE 80
EXPOSE 443

CMD /nginx.run
