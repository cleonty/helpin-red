Red [
  title: "String and Text Manipulation"  
]

s: "My house is a very funny house"
probe split s " "

e: " spaces before and after "  
probe trim e

e: " spaces before and after "  
probe trim/head e

e: " spaces before and after "  
probe trim/tail e

d: "our house in the middle of our street"
probe trim/with d " "

a: "House"
probe pad a 10
probe pad/left a 20

a: "house" b: " " c: "entrance"
probe rejoin [a b c]

append a c
probe a
probe c

a: "house" b: " " c: "entrance"
probe append a append b c

a: ["my" "house" 23 47 4 + 8 ["a" "bee" "cee"]]
probe form a
probe form/part a 8

f: "my house"
probe length? f

s: "nasty thing"
probe copy/part s 5
probe at tail s -5

a: "abcdefghijkl"
probe  copy/part at a 4 3

s: "house"
insert s "beautiful "
probe s

s: "beautiful"
append s " day"
probe s

s: "nasty thing"
insert at s 7 "little "
probe s

a: "My HoUse"
lowercase a
probe a

print "^""

