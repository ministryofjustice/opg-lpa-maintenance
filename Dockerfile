FROM registry.service.opg.digital/opguk/nginx:0.1.206

RUN  apt-get update && apt-get autoclean && apt-get autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}/ && rm -rf /tmp/* /var/tmp/*

RUN rm /app/public/index.html
ADD  . /app/public
RUN  chown -R app /app

WORKDIR /app/public
USER app
ENV  HOME /app

USER root
ENV  HOME /root
