Red [
  needs: view
]

view [
  size 150x150
  b: base 40x40 blue "I move" rate 20
    on-time [b/offset: b/offset + 1x1]
]