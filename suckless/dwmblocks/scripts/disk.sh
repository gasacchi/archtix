#!/bin/sh
df -h | awk '$NF=="/"{printf "%d/%dGB (%s)\n", $3,$2,$5}'
