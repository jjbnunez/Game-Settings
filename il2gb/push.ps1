[CmdletBinding()]
Param (
    [Parameter()]
    [String]
    $Type = "2d"
)

$ScriptDir = (Get-Item $PSCommandPath).Directory
. $ScriptDir\common.ps1

if ($Type -eq "2d") {
    Copy-Item -Force ".\startup.cfg" "$DataDir\startup.cfg"
} elseif ($Type -eq "vr") {
    Copy-Item -Force ".\startup_vr.cfg" "$DataDir\startup.cfg"
}