#!/bin/bash

PS=$(ps | grep inotifywait)
echo $PS

if [$PS=Null]; then
        echo "Se está ejecutando inotifywait"
else
        echo "No se está ejecutando inotifywait"
fi

