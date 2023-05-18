#!/usr/bin/env bash
sed -i "s/{{site_content}}/$(echo ${SITE_CONTENT})/g" index.html
sed -i "s/{{site_header}}/$(echo ${SITE_HEADER})/g" index.html
sed -i "s/{{site_title}}/$(echo ${SITE_TITLE})/g" index.html

while true;  do {  echo -e "HTTP/1.1 ${RESPONSE_CODE}\r\n"; echo "$(cat index.html)"; } | nc -lvp  "$PORT";  done