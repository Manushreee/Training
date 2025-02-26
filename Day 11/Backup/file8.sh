$name=read-host "Enter your name"
write-host "good evening $name"

$names = @("Alice","Bob","Charlie")
 
$names | ForEach-Object { Write-Host "Hello, $_" }
