. .\common.ps1

$FsrVersion = "2.1.1"
$FsrDirName = "openvr_fsr_v$FsrVersion"
$FsrArchive = "$FsrDirName.zip"
$FsrUri = "https://github.com/fholger/openvr_fsr/releases/download/fsr_v$FsrVersion/$FsrArchive"

if (-not (Test-Path "$GameDir\openvr_api.dll.bak")) {
    Copy-Item -Force "$GameDir\openvr_api.dll" "$GameDir\openvr_api.dll.bak"
}

Do {
    $TempDirName = [System.IO.Path]::GetRandomFileName() -Replace "\.",""
    $TempDir = Join-Path $env:TEMP $TempDirName
}
Until (-not (Test-Path "$TempDir"))
New-Item -Path $env:TEMP -Name $TempDirName -ItemType Directory | Out-Null

Invoke-WebRequest -UseBasicParsing -Uri $FsrUri -OutFile "$TempDir\$FsrArchive"

Expand-Archive -LiteralPath "$TempDir\$FsrArchive" -DestinationPath "$TempDir\$FsrDirName"

Copy-Item -Force "$TempDir\$FsrDirName\openvr_api.dll" -Destination "$GameDir"
Copy-Item -Force ".\openvr_mod.cfg" -Destination "$GameDir"

Remove-Item -Recurse "$TempDir\"
