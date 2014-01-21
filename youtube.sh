#!/bin/bash

# Script para visualizar videos de youtube con mplayer

YOUTUBE_URL = `xclip -o`
echo $YOUTUBE_URL
#smplayer $youtube_url
#mplayer -fs $(echo “http://youtube.com/get_video.php?$(curl -s $youtube_url | sed -n “/watch_fullscreen/s;.*\(video_id.\+\)&title.*;\1;p”)”)
