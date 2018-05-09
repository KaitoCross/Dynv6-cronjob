#!/bin/sh -e
# based on https://gist.github.com/corny/7a07f5ac901844bd20c9

hostname=$1
token=$2

if [ -z "$hostname" -o -z "$token" ]; then
  echo "Usage: $0 your-name.dynv6.net <your-authentication-token>"
  exit 1
fi

if [ -e /usr/bin/curl ]; then
  bin="curl -fsS"
elif [ -e /usr/bin/wget ]; then
  bin="wget -O-"
else
  echo "neither curl nor wget found"
  exit 1
fi

$bin "http://ipv4.dynv6.com/api/update?hostname=$hostname&ipv4=$v4_address&token=$token"

