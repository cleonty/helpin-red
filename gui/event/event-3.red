Red [
  needs: view
]

view [
  title "Canvas"
  canvas: base 150x80 "Press any arrow key" focus
  draw []
  on-key [
    switch event/key [
      up [canvas/text: "move up"]
      down [canvas/text: "move down"]
      left [canvas/text: "move left"]
      right [canvas/text: "move right"]
    ]
  ]
]