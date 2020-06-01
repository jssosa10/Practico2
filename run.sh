#!/bin/bash
rm -rf logs
rm -rf screenshots
rm report.html


mkdir logs
mkdir screenshots

calabash-android resign ../mutants/$1/mileage.apk

SCREENSHOT_PATH=screenshots/ \
REPORT_PATH=logs \
calabash-android run ../mutants/$1/mileage.apk --format html --out report.html

mkdir -p ../results/$1

mv report.html ../results/$1/
mv logs ../results/$1/
mv screenshots ../results/$1/