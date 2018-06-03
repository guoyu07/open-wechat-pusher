#/bin/bash

source config/env


echo "build program....."
go build -o wechat-pusher . 

echo "start new process ..."
nohup ./wechat-pusher -c config/queues.yml -log logs/wechat-pusher.pid -pidfile run/wechat-pusher &

exit 0
