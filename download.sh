#!/bin/bash

APPUSER=roboshop
ENVIRONMENT=demo
USERNAME=mrjithendar
COMPONENT=cart
ARTIFACTDIR=/tmp/${COMPONENT}

if [ -d ${ARTIFACTDIR} ]; then
  rm -rf $ARTIFACTDIR
  mkdir -p $ARTIFACTDIR
  curl -L https://raw.githubusercontent.com/${USERNAME}/decode-artifacts/master/${COMPONENT}/Archive.zip -o /tmp/${COMPONENT}.zip
  else
    mkdir -p $ARTIFACTDIR
    curl -L https://raw.githubusercontent.com/${USERNAME}/decode-artifacts/master/${COMPONENT}/Archive.zip -o /tmp/${COMPONENT}.zip
fi

if [ $? -eq 0 ]; then
  echo -e "Artifacts downloaded for $COMPONENT"
  else
    echo -e "Artifacts download failed for $COMPONENT"
    exit 1
fi