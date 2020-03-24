FROM v8tix/laskaris:0.0.4.v20200324.244a5e7
LABEL MAINTAINER="V8TIX"
LABEL MAIL="info@v8tix.com"
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/temp"]
ADD entrypoint /home/v8tix/entrypoint
ENTRYPOINT ["/home/v8tix/entrypoint/entrypoint.sh"]