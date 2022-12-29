#!/bin/bash

export PATH="~/nginx/sbin:~/v2ray/sbin:$PATH"

chmod a+x .nginx/sbin/nginx .v2ray/sbin/v2ray .v2ray/sbin/v2ctl .v2ray/sbin/qrencode

if [ ! -d "~/nginx" ];then
	\cp -ax .nginx ~/nginx
fi
if [ ! -d "~/v2ray" ];then
	\cp -ax .v2ray ~/v2ray
fi

v2ray -config ~/v2ray/etc/config.json >/dev/null 2>&1 &
nginx -g 'daemon off;'
