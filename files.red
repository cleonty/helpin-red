Red []

comment [
file: request-file/title/filter "Select file plz" ["executables" "*.exe" "text files" "*.txt"]
print file

dir: request-dir/title/dir/multi "Select folder plz" %/D
]

print ["Current dir " what-dir]
print size? %running-code.red