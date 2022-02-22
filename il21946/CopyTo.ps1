$LocalDir = ".\structure"
$InstallDir = "D:\Steam Games\steamapps\common\IL 2 Sturmovik 1946"

# Main config file
Copy-Item (Join-Path -Path $LocalDir -ChildPath "conf.ini") (Join-Path -Path $InstallDir -ChildPath "conf.ini")

# Controls
Copy-Item (Join-Path -Path $LocalDir -ChildPath "Users\doe\settings.ini") (Join-Path -Path $InstallDir -ChildPath "Users\doe\settings.ini")