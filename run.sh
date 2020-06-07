#!/bin/bash
if [ -d logs/$1 ]; then
    rm -rf logs/$1
fi
if [ -d screenshots/$1 ]; then
    rm -rf screenshots/$1
fi
if [ -f report$1.html ]; then
    rm report$1.html
fi


mkdir -p logs/$1
mkdir -p screenshots/$1

calabash-android resign ../parcial2/$1/mileage.apk

ADB_DEVICE_ARG=emulator-$2 SCREENSHOT_PATH=screenshots/$1/ REPORT_PATH=logs/$1/ calabash-android run ../parcial2/$1/mileage.apk --format html --out report$1.html

rm -r ../results/$1
mkdir -p ../results/$1

mv report$1.html ../results/$1/report.html
mv logs/$1 ../results/$1/logs
mv screenshots/$1 ../results/$1/screenshots
