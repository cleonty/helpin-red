Red [
  needs: view
]

view [
  title "Mouse Down and Over"
  size 300x60
  t: area 40x40 blue
  on-down [quit]
  on-over [either t/color = red [t/color: blue][t/color: red]]
]