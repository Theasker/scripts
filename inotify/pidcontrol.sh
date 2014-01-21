# Para poner en el fichero ~/.xinitrc

startxfce4 > "${HOME}/logs/xfce.log" 2>&1 &
wm_pid=$!
conky &
conky_pid=$!
urxvtd &
urxvtd_pid=$!
inotifywait --format %f -m /etc | while read f; do xmessage $f; done &
inotify_pid=$!
sleep 1
wait $wm_pid
kill -TERM $urxvtd_pid
kill -TERM $conky_pid
kill -TERM $inotify_pid
