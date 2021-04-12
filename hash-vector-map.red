Red [
  
]

a: make hash![a 33 b 44 c 52]
print a

print select a [c]
print select a 'c
print a/b

v: make vector! [33 44 55]

print v
print v * 8

m: make map! ["mini" 33 "winny" 44 "mo" 55]
print m
print select m "winny"
put m "winny" 99
print m

extend m ["more" 23 "even more" 77]
print m