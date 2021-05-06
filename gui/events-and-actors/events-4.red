Red [
  needs: view
]

view [
  size 300x50
  title "Rate test"
  t: text "Now you see..." rate 1
    on-time [either t/text = "" [t/text: "Now you see..."][t/text: ""]]
]