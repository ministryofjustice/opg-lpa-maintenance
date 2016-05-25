FROM registry.service.dsd.io/opguk/nginx:latest

RUN  apt-get update && apt-get autoclean && apt-get autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}/ && rm -rf /tmp/* /var/tmp/*

RUN rm /app/public/index.html
ADD  ./docker/content/lpa /app/public
RUN  chown -R app /app

ADD docker/nginx-app.conf.d/lpa.conf /etc/nginx/app.conf.d/

WORKDIR /app/public
USER app
ENV  HOME /app

USER root
ENV  HOME /root
