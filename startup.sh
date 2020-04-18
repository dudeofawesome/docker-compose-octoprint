#!/bin/sh

apk add zlib gphoto2 curl py-numpy
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=/usr/local/bin sh

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf

