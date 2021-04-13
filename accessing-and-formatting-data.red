Red [
  
]

probe get 'print
probe get 'get

a: 7
probe get 'a

a: [7 + 2]
probe get 'a

probe mold [4 + 2]
probe mold/only [4 + 2]
probe mold/all [4 + 2]
probe mold/flat [4 + 2]

print "---------MOLD----------"
print mold {My house
       is a very
       funny house}
print "---------FORM----------"        
print form {My house
       is a very
       funny house}
print "---------MOLD----------"        
print mold [3 5 7]
print "---------FORM----------"        
print form [3 5 7]


a: [b: drop-down data[ "one" "two" "three"][print a/text]]
print mold a
print form a


a: [3 + 5 2 - 8 9 > 3]
probe a
probe reduce a

London: "the capital of Great Britain"
paper: [London]
print reduce paper
print type? first paper

a: [11 "house" 34.2 "dog" 22]
b: collect [
  foreach element a [if string? element [keep element]]
]
print b

c: ["one" "two"]
collect/into [
  foreach element a [if scalar? element [keep element]]
] c
print c

a: [add 3 5 (add 3 5) 9 + 8 (9 + 8)]
print compose a
probe compose a

a: [add 3 5 (add 3 5) [9 + 8 (9 + 8)]]
probe compose a                
probe compose/deep a  

a: [add 3 5 (add 3 5) 9 + 8 (9 + 8)]
b: []
compose/into a b
probe b