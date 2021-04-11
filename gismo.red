Red [
  needs: view
  title: "Zowe Monitor"
]

sites: reduce [
	context [url: https://rs28.rocketsoftware.com:56564/api/v1/zss/plugins	title: "ZSS troughthout Gateway"]
  context [url: https://rs28.rocketsoftware.com:59342/plugins	title: "ZSS"]
	context [url: https://rs28.rocketsoftware.com:59344	title: "App Server"]
	context [url: https://example.com                   title: "Example"]
	context [url: https://github.com/cleonty            title: "Github"]
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
  call/shell append "start " face/extra/url
]

foreach site sites [
  append indicators compose/deep [
    base (size) (site/title) extra (site) [open-site face]
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
