import os
import sys

for mutant in range(7,4549):
    os.system(f"./prepare.sh {mutant}")

print("Done preparing")