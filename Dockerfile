FROM alpine
LABEL maintainer="abdullah@abdullah.solutions"
RUN apk update
RUN apk add mpc mpd
RUN mkdir -p /music/playlists
RUN touch /music/database
COPY configs/mpd.conf /etc/mpd.conf
COPY configs/startup.sh /music/
# copy some music files to image
COPY music/nazia-tapay-rubab.mp3 /music/ 
RUN chown -R mpd:audio /music
# expose port 6600 for music player clients, 8000 for web stream
EXPOSE 8000 6600
CMD ["/bin/sh", "/music/startup.sh" ]
