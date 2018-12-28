#!/bin/ash
/bin/sh
java -jar /root/resin/lib/resin.jar start
tail -f /root/resin/log/*
