$InstallDir = "C:\Program Files (x86)\Steam\steamapps\common\IL-2 Sturmovik Battle of Stalingrad"
$DataDir = Join-Path $InstallDir "\data"
$BinDir = Join-Path $InstallDir "\bin"
$GameDir = Join-Path $BinDir "\game"

Write-Host "InstallDir is '$InstallDir'"
Write-Host "DataDir is '$DataDir'"
Write-Host "BinDir is '$BinDir'"
Write-Host "GameDir is '$GameDir'"