#!/bin/bash
# => connect via VNC viewer localhost:5902, default password: vncpassword

# => connect via noVNC HTML5 client: http://localhost:6902/vnc_auto.html?password=vncpassword


docker run -d -p 5902:5901 -p 6902:6901 consol/ubuntu-xfce-vnc
