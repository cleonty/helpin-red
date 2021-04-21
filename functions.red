Red [
  title: "functions"
]

mysum: func [a b] [a + b]
print mysum 3 4

mysum2: func [a b] [
  mynumber: a + b
  print mynumber
]

mynumber: 20
mysum2 3 4
print mynumber

mysum3: function [a b] [
  mynumber: a + b
  print mynumber
]

mynumber: 20
mysum3 3 4
print mynumber

mysum4: function [a [integer! float!] b [integer!]] [
  print a + b
]

print mysum4 3.4 2

mysum5: function [a [number!] b [number!]] [
  print a + b
]

print mysum5 3.4 8.1

sum: function [
  "Adds two numbers, or pairs"
  a [number! pair!] "First number or pair"
  b [number! pair!] "Second number or pair"
] [
  a + b
]

print "This is my function's help:"
print ? sum

myfunc: function [a /up b /down c] [
  if up [print a + b]
  if down [print a - c ]
]

myfunc/up 10 3
myfunc/down 10 3

sum: function [
  "Adds two integers, floats, or pairs"
  a [integer! float! pair!] "First number"
  b [integer!] "Next Number - must be integer"
  /average "Average instead of add"
] [
  either average [a + b / 2] [a + b]
]

print "This is my function's help:"
print ? sum
print "Using add with 10 and 16:"
prin "sum = " print sum 10 16
prin "sum/average = " print sum/average 10 16

a: :sum
print a 3 4

greeting: does [
  print "Hello"
  print "Stranger"
]

greeting