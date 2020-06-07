import sys
import test_mutants

ini = int(sys.argv[1])
en = int(sys.argv[2])

trivs = test_mutants.get_trivials()
killed = test_mutants.get_killed()
res = []
for mutant in range(ini,en+1):
    if(mutant in trivs or mutant in killed):
        continue
    else:
        res.append(mutant)
print(res,len(res))