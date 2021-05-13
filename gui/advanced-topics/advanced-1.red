Red [
  needs: view
]

view [
  style myface: base 70x40 cyan [quit]
  myface "Click to quit"
  myface "Here too"
  panel red 90x110 [
    below
    myface "And here"
    myface "Also here" blue
  ]
]