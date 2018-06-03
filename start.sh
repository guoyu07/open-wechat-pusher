#/bin/bash

source config/env


echo "build program....."
go build -o wechat-pusher . 

echo "start new process ..."
nohup ./wechat-pusher -c config/queues.yml -log log/wechat-pusher -pidfile run/wechat-pusher &

exit 0
