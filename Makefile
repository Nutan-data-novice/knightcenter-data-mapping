# Here's where we'll put our Make commands
greetings:
	echo 'hello world'

	math:
		expr 2 + 2
math:
	expr 2	*	2
maths:
	expr	2	-	2

all1:greetings math maths

directories:
		-mkdir tmp
		-mkdir data

downloads:
		curl "https://www.imf.org/external/datamapper/api/v1/PCPIPCH?periods=2023" -o tmp/inflation.json
		curl "https://www.imf.org/external/datamapper/api/v1/countries" -o tmp/countries.json


freshdata:
	node imf_to_csv.js
	
all:directories downloads freshdata

