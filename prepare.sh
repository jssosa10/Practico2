#!/bin/bash
cd ..
cd parcial2
cd com.evancharlton.mileage-mutant$1

if [ -d out ]; then
    rm -rf out
fi

if [ -f mileage.apk ]; then
    rm mileage.apk
fi

apktool d com.evancharlton.mileage_3110-aligned-debugSigned.apk -s -o out
cd out


sed -i '2i\ <uses-permission android:name="android.permission.INTERNET" />' AndroidManifest.xml

cd ..

apktool b out -f -o mileage.apk

rm -rf out

cd ..

mkdir $1

cp com.evancharlton.mileage-mutant$1/mileage.apk $1/

rm -rf com.evancharlton.mileage-mutant$1