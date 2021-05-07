Red [
  needs: view
]

view [
  title "Mouse position"
  base 100x100
  on-down [
    print event/type
    print event/offset
  ]
]