Write-host "My name is Viv"
Write-host "My first script in Powershell"
$a=5
$b=6
$c=$a + $b
$d =$a - $b
Write-host $c
Write-host $d

Get-ChildItem -path C:\ -force

Get-ChildItem -path $env:ProgramFiles -Recurse *.exe | 
Where-Object -FilterScript {($_.LastWriteTime -gt (2020-01-01)) -and ($_.Length -ge 10mb) -and ($_.Length -le 200mb) }