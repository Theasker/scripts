#!/bin/bash

PS=$(ps | grep inotifywait)
echo $PS

if [$PS=Null]; then
        echo "Se est� ejecutando inotifywait"
else
        echo "No se est� ejecutando inotifywait"
fi

