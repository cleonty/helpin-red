Red [
  title: "Objects"
]

myobject: object [
  x: 10
  y: 20
  f: function [a b] [a + b]
  name: none
  tel: none
]

myobject/name: "Dmitry"
myobject/tel: #3333-3333
print myobject/x
print myobject/y
print myobject/f 3 5
print myobject/name
print myobject/tel

myobject: object [print "hello" a: 1 b: 2]
probe myobject
print myobject/a

myobject: object [
  x: 10
  y: 20
  f: function [a b] [a + b]
  autoanalisys: does [print self]
]
myobject/autoanalisys

a: object [x: 10]
b: a
a/x: 20
print b/x

a: object [x: 10]
b: copy a
a/x: 20
print b/x

a: object [x: 3]
b: make a [y: 12]
print b

myobject: object [
  name: none
  tel: none
]
myobject/name: "Dmitry"
myobject/tel: #3333-3333
myextended-object: make myobject [
  gender: "male"
  zip_code: 666
]
myextended-object/name: "Igor"
myextended-object/tel: #9996-9669
prin myobject/name prin "  tel:" print myobject/tel
prin myextended-object/name prin "  tel:" prin myextended-object/tel
prin "  gender:" prin myextended-object/gender prin "  zip:"
print myextended-object/zip_code

obj: object [a: 44]
print select obj 'a
print select obj 'something
