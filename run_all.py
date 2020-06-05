import os
import sys

ini = int(sys.argv[1])
end = int(sys.argv[2])
os.system("./start_emulator.sh")
for mutant in range(ini,end):
    if mutant%50==0:
        os.system("./restart_emulator.sh")
    os.system(f"./run.sh {mutant}")
    os.system(f"echo \" [x] Wow! Finished {mutant}")

os.system("./kill_emulator.sh")