import os
import sys

ini = int(sys.argv[1])
end = int(sys.argv[2])

for mutant in range(ini,end):
    os.system(f"./run.sh {mutant}")
    os.system(f"echo \" [x] Wow! Finished {mutant}")