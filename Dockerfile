FROM registry.service.dsd.io/opguk/nginx:latest

RUN  apt-get update && apt-get autoclean && apt-get autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}/ && rm -rf /tmp/* /var/tmp/*

ADD  docker/nginx-app.conf.d/lpa.conf /etc/nginx/app.conf.d/

RUN  rm /app/public/index.html
ADD  ./docker/content/lpa /app/public
RUN  chown -R app /app
