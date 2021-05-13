Red [
  needs: view
]

v1: view/options/no-wait [
  backdrop blue
  button "unview blue" [unview/only v1]
  button "unview yellow" [unview/only v2]
][ offset: 30x100 ]

v2: view/options/no-wait [
  backdrop yellow
  button "unview blue" [unview/only v1]
  button "unview yellow" [unview/only v2]
][ offset: 400x100 ]