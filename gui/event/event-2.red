Red [
  needs: view
]

view [
  title "Absolute mouse pos"
  area 100x100
  on-key [
    print event/type
    print event/offset
    print event/key
  ]
]