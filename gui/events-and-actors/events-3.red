Red [
  needs: view
]
list: ["key" "another key" "one more key"]


view [
  title "Key down"
  below
  text "Click inside filed and press a key"
  t: text 100
  a: field 
    on-key-down [
      t/text: first list
      list: next list
      if tail? list [list: head list]
    ]
]