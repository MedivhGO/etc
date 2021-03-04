#! /usr/bin/env python
# encoding: utf-8

destfile = open('./destfile.sql','a+')
with open("clienttpcds-profile.sql",'r') as f:
	arr = []
	x = 1
	for line  in f.readlines():
		if line.find(';') != -1:
			arr.append(line)
			destarr=[]
			destarr.append("EXPLAIN\n")
			for i in range(len(arr)):
				if len(arr[i].strip()) == 0:
					continue
				else:
					newarr.append(arr[i])
			destarr.append("\n")
			for i in range(len(destarr)):
				if i==5:
					destfile.write(destarr[i] + "/*+ " + str(x) + "*/")
				else:
					destfile.write(destarr[i])
			x+=1
			arr=[]
			destarr=[]
		else:
			arr.append(line)
destfile.close()
