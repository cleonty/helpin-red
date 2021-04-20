Red [
  
]

a: read %mySecondFile.txt
probe a

a: read/lines %mySecondFile.txt
probe a
print pick a 2

a: load %mySecondFile.txt
print pick a 2