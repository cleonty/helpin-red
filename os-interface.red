Red [
  title: "OS interface"
]

;call "explorer.exe"
;call/shell "notepad.exe"

call "powershell [console]::beep(1000,500)"

call/output "ls" %mycall.txt

a: ""
call/output "ls" a
print a

;call/shell/show "notepad.exe" didn't work for me

call/console "echo hello world"

write-clipboard "You could paste this somewhere you find useful"
print read-clipboard