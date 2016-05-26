FROM registry.service.dsd.io/opguk/nginx:latest

RUN  apt-get update && apt-get autoclean && apt-get autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}/ && rm -rf /tmp/* /var/tmp/*

ADD  docker/nginx-conf.d/lpa.conf /etc/nginx/conf.d/
ADD  docker/confd /etc/confd
ADD  docker/my_init /etc/my_init.d/

RUN  rm /app/public/index.html
ADD  ./docker/content /app/public
RUN  chown -R app /app
