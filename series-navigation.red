Red [
  title: "Series navigation"
]

s: [ "cat" "dog" "fox" "cow" "fly" "ant" "bee" ]

print head? s
print index? s
print first s
s: next s

print pick s 2

movies: [
   title "Gone with the wind"
   star "Scarlet Something"
   quality "pretty good"
   age "very old"
]

print select movies 'quality
print movies/star

sites: [
	"url" https://rs28.rocketsoftware.com:56564/api/v1/zss/plugins	"title" "ZSS troughthout Gateway"
  "url" https://rs28.rocketsoftware.com:59342/plugins	"title" "ZSS"
	"url" https://rs28.rocketsoftware.com:59344	"title" "App Server"
	"url" https://example.com                   "title" "Example"
	"url" https://github.com/cleonty            "title" "Github"
]

urls: extract/index sites 4 2
print append "urls: " form urls 