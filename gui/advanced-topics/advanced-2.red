Red [
  needs: view
]

my-view: [button {click to "unview"} [unview]]
print "something"
print "biding my time"

view/options/no-wait my-view [offset: 30x100]
view/options/no-wait my-view [offset: 400x100]