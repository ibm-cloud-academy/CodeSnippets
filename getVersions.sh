#!/bin/bash
FILE_NAME=versions.sh
LOCAL_DIR=/usr/local/bin
LOCAL_FILE_NAME=$LOCAL_DIR/$FILE_NAME

OLD_FILE_NAME=$LOCAL_FILE_NAME.old

URL=https://raw.githubusercontent.com/bluemix-enablement
REMOTE_DIR=$URL/CodeSnippets/master
REMOTE_FILE_NAME=$REMOTE_DIR/$FILE_NAME

sudo chmod a+wx $LOCAL_FILE_NAME
sudo mv $LOCAL_FILE_NAME $OLD_FILE_NAME
## curl variant  sudo curl -o $LOCAL_FILE_NAME $REMOTE_FILE_NAME
sudo wget -q -O $LOCAL_FILE_NAME $REMOTE_FILE_NAME
if [ $? -eq 0 ];
then
    sudo chmod a+x $LOCAL_FILE_NAME
    sudo rm $OLD_FILE_NAME
else
  echo 'wget failed:' $?
  sudo mv $OLD_FILE_NAME $FILE_NAME
fi
