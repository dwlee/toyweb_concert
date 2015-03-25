#!/usr/bin/env sh

export CONCERT_AUTO_ENABLE_SERVICES="[admin, training_contents/]"
export CONCERT_AUTO_ENABLE_WORKFLOWS="--web --engine --workflow training_contents_wf"
export CONCERT_WEBSERVER_ADDRESS="webapp.robotconcert.org"
