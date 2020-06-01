#!/bin/bash
if [ -d logs ]; then
    rm -rf logs
fi
if [ -d screenshots ]; then
    rm -rf screenshots
fi
if [ -f report.html ]; then
    rm report.html
fi


mkdir logs
mkdir screenshots

calabash-android resign ../parcial2/$1/mileage.apk

SCREENSHOT_PATH=screenshots/ REPORT_PATH=logs/ calabash-android run ../parcial2/$1/mileage.apk --format html --out report.html

mkdir -p ../results/$1

mv report.html ../results/$1
mv logs ../results/$1
mv screenshots ../results/$1