#!/bin/sh
/echoip/echoip -a /echoip/GeoLite2-ASN.mmdb -c /echoip/GeoLite2-City.mmdb -f /echoip/GeoLite2-Country.mmdb -H X-Real-IP -t /echoip/html
