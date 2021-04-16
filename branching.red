Red []

if 10 > 4 [ print "large" ]
if "house" [ print "house is true" ]
if 0 [ print "0 is true" ]
if [] [ print "[] is true" ]
if [ false ] [ print "[ false ] is true"]

print unless 10 > 4 [ print "large" ]
unless 4 > 10 [ print "large" ]

either 10 > 4 [ print "10 > 4" ] [ print "10 <= 4" ]
either 10 < 4 [ print "10 < 4" ] [ print "10 >= 4" ]

switch 20 [
  10 [ print "10" ]
  20 [ print "20" ]
  30 [ print "30" ]
]

switch/default 15 [
  10 [print "ten"]
  20 [print "twenty"]
  30 [print "thirty"]
] [print "none of them"]

case [
  10 > 20 [print "not ok!"]
  20 > 10 [print "this is it!"]
  30 > 10 [print "also ok!"]
]

case/all [
  10 > 20 [print "not ok!"]
  20 > 10 [print "this is it!"]
  30 > 10 [print "also ok!"]
]

a: 10

print catch [
       if a < 10 [throw "too small"]
       if a = 10 [throw "just right"]
       if a > 10 [throw "too big"]
]

john: "boy"
alice: "girl"
print all [john = "boy" alice = "girl" 10 + 3]
if all [john = "boy" alice = "girl"] [print "It' all true"]

print any [john = "girl"  alice = "girl"  10 + 3]
print any [john = "girl"  10 + 3  5 > 2]
if any [john = "girl" alice = "girl"] [print "Something is true here"]