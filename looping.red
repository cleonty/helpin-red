Red []

loop 3 [ print "hello" ]

repeat i 3 [print i]

a: ["china" "japan" "korea" "usa" "russia"]
forall a [print a]

a: ["china" "japan" "korea" "usa" "russia"]
foreach i a [print i]

i: 1
while [ i < 5 ] [
  print i
  i: i + 1
] 