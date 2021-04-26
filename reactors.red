Red [
  title: "Reactors"
]

a: make reactor! [x: ""]
b: is [a/x]

comment [
forever [
  a/x: ask "?"
  print b
  if b = "q" [
    break
  ]
]
]

a: make reactor! [x: 1 y: 2 total: is [x + y]]
comment [
forever [
  a/x: to integer! ask "?"
  print a/total
]
]

a: make deep-reactor! [z: [x: ""]]
b: object [w: is [a/z/x]]
b/w: "no change"

forever [
  a/z/x: ask "? "
  print b/w
  if a/z/x = "" [
    break
  ]
]