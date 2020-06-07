#!/bin/bash
adb -s emulator-$1 emu kill
cd "$(dirname "$(which emulator)")"
echo $(pwd)
./emulator -port $1 -avd $2 &>/dev/null &
sleep 30
