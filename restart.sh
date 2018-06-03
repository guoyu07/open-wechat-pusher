#!/bin/bash

source config/env

echo "kill old process ..."
kill -QUIT `cat run/wechat-pusher`

echo "sleep 5 second ..."
sleep 5

echo "start new process ..."
nohup ./wechat-pusher -c config/queues.yml -log logs/wechat-pusher.pid -pidfile run/wechat-pusher &

exit 0
