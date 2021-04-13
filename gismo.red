Red [
  needs: view
  title: "Zowe Monitor"
]

sites: [
	[url https://rs28.rocketsoftware.com:56564/api/v1/zss/plugins	title "ZSS troughthout Gateway"]
  [url https://rs28.rocketsoftware.com:59342/plugins	title "ZSS"]
	[url https://rs28.rocketsoftware.com:59344	title "App Server"]
	[url https://example.com title "Example"]
	[url https://github.com/cleonty title "Github"]
]

size: 250x23

indicators: [
  title "Zowe Monitor"
  below
]

check-site: func [face] [
  face/color: gray
  face/color: either attempt [read face/extra/url] [green] [red]
]

open-site: func [face] [
  call/shell rejoin ["start " face/extra/url]
]

foreach site sites [
  append indicators compose/deep [
    base (size) (site/title) extra [(site)] [open-site face]
  ]
]
append indicators compose/deep [
  button (size) "Refresh" [check-sites] rate 0:0:10
  on-time [check-sites]
  on-create [check-sites]
]

check-sites: does [
	foreach face indicators/pane [
		if face/type = 'base [check-site face]
	]
]

indicators: layout indicators

view indicators
