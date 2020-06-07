import mmap
import sys
def get_trivials():
	trivs = []
	for i in range(1,4549):
		try:
			with open(f"/home/juan-sosa/results/{i}/logs/save_without_filling_fields/sys_log.out.txt", 'rb', 0) as file, mmap.mmap(file.fileno(), 0, access=mmap.ACCESS_READ) as s:
				if s.find(b'--------- beginning of crash') != -1:
					trivs.append(i)
		except:
			pass
	return trivs


#'step failed'
def get_killed():
	trivs = []
	for i in range(1,4549):
		try:
			with open(f"/home/juan-sosa/results/{i}/report.html", 'rb', 0) as file, mmap.mmap(file.fileno(), 0, access=mmap.ACCESS_READ) as s:
				if s.find(b'step failed') != -1:
					trivs.append(i)
		except:
			pass
	return trivs