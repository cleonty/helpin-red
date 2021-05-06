Red [
  needs: view
]

list: ["first" "second" "third" "fourth"]

view [
  title "Mouse Wheel"
  t: text "Place your cursor here and roll the wheel"
  on-wheel [
    t/text: first list
    list: next list
    if tail? list [list: head list]
  ]
]