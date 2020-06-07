import os
import sys
import test_mutants

ini = int(sys.argv[1])
end = int(sys.argv[2])
no_trivs = int(sys.argv[3])
no_killed = int(sys.argv[4])
id = sys.argv[5]
emulator = sys.argv[6]
os.system(f"./start_emulator.sh {id} {emulator}")

trivs = []
killed = []
if no_trivs != 0:
    trivs = test_mutants.get_trivials()
if no_killed != 0:
    killed = test_mutants.get_killed()
print(killed)

for mutant in range(ini,end):
    if mutant%50==0:
        os.system(f"./restart_emulator.sh {id} {emulator}")
    if(mutant in trivs or mutant in killed):
        print(mutant, "in trivs or killed")
    else:
        os.system(f"./run.sh {mutant} {id}")
        os.system(f"echo \" [x] Wow! Finished {mutant}")

os.system(f"./kill_emulator.sh {id}")
