Red [
  title: "Writing files"
]

write %myFirstFile.txt "Once upon a time..."
write/append %myFirstFile.txt "^(line)there was a house"

write/lines %mySecondFile.txt ["First line;" "Second Line;" "Third line."]
write/append/lines %mySecondFile.txt ["Fourth line;" "Fifth line;" "Sixth line."]

write/seek %myFirstFile.txt "NEW TEXT" 5

write %myFourthFile.txt [11 22 "three" "four" "five"]
save %myFourthFile.txt [11 22 "three" "four" "five"]

save %myProgram.r [Red[] print "hello"]
do %myProgram.r