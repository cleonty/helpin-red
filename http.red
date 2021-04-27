Red [
  title: "HTTP I/O"
]

print read http://helpin.red/samples/samplescript1.txt
print read http://helpin.red/samples/samplescript2.txt

do read http://helpin.red/samples/samplescript1.txt
do http://helpin.red/samples/samplescript2.txt

a: load http://helpin.red/samples/samplescript1.txt
do a

print read http://helpin.red/samples/samplehtml1.html