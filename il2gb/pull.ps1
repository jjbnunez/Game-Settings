[CmdletBinding()]
Param (
    [Parameter()]
    [String]
    $Type = "2d"
)

$ScriptDir = (Get-Item $PSCommandPath).Directory
. $ScriptDir\common.ps1

if ($Type -eq "2d") {
    Copy-Item -Force "$DataDir\startup.cfg" ".\startup.cfg" 
} elseif ($Type -eq "vr") {
    Copy-Item -Force "$DataDir\startup.cfg" ".\startup_vr.cfg"
}
