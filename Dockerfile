FROM alpine:latest
LABEL maintainer="abdullah@abdullah.solutions"
RUN apk update && apk add mpc mpd
WORKDIR /music
COPY music/mpd.conf /etc/mpd.conf
COPY music/* /music/
RUN chown -R mpd:audio /music/
EXPOSE 6600 8000
CMD ["/bin/sh", "/music/start.sh"]
