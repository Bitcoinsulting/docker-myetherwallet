#!/bin/sh
CURL="curl -sL"
STAMP=`date +%s%N | tr -d "\012"`
TMP_FILE="/tmp/etherwallet-$STAMP.zip"
if [ "$ETHERWALLET_VERSION" = "" ]; then
  ETHERWALLET_VERSION=`$CURL https://api.github.com/repos/kvhnuke/etherwallet/releases/latest | jq -r '.tag_name' | sed 's/v//'`
fi

echo "Using kvhnuke/etherwallet release: $ETHERWALLET_VERSION"
if [ -e $TMP_FILE ]; then
  rm $TMP_FILE
fi
$CURL -o $TMP_FILE https://github.com/kvhnuke/etherwallet/releases/download/v$ETHERWALLET_VERSION/dist-v$ETHERWALLET_VERSION.zip
unzip $TMP_FILE
rm $TMP_FILE

http-server .

