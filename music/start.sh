#!/bin/sh

# Run mpd

mpd /etc/mpd.conf


# toggle repeat and single

mpc single on
mpc repeat on

# add music files

mpc searchadd filename Surah

# finally play

mpc play

# leave it running
sleep infinity

