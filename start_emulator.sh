#!/bin/bash
cd "$(dirname "$(which emulator)")"
echo $(pwd)
./emulator -port 5556 -avd Nexus_5_API_26 &>/dev/null &
sleep 30