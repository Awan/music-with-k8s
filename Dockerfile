FROM ubuntu
LABEL maintainer="abdullah@abdullah.solutions"
RUN apt update -y && apt install -y mpd mpc
RUN mkdir -p /music/playlists
COPY configs/mpd.conf /etc/mpd.conf
# copy some music files to image
COPY music/dohray-mahiye-vol6B.mp3 /music/ 
RUN chown -R mpd:audio /music
# expose port 6600 for music player clients, 8000 for web stream
EXPOSE 8000 6600
CMD ["mpd", "--no-daemon", "--stdout", "/etc/mpd.conf" ]
