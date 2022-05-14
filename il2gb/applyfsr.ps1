. .\common.ps1

$FsrUri = "https://github.com/fholger/openvr_fsr/releases/download/fsr_v2.1.1/openvr_fsr_v2.1.1.zip"

if (-not (Test-Path "$GameDir\openvr_api.dll.bak")) {
    Copy-Item -Force "$GameDir\openvr_api.dll" "$GameDir\openvr_api.dll.bak"
}

Do {
    $TempDirName = [System.IO.Path]::GetRandomFileName() -Replace "\.",""
    $TempDir = Join-Path $env:TEMP $TempDirName
}
Until (-not (Test-Path "$TempDir"))

Invoke-WebRequest -UseBasicParsing $FsrUri -Out
