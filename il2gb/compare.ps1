[CmdletBinding()]
Param (
	[Parameter()]
	[String]
	$Type = "2d"
)

$ScriptDir = (Get-Item $PSCommandPath).Directory
. $ScriptDir\common.ps1

if ($Type -eq "2d") {
	Compare-Object (Get-Content $ScriptDir\startup.cfg) (Get-Content $DataDir\startup.cfg)
} elseif ($Type -eq "vr") {
	Compare-Object (Get-Content $ScriptDir\startup_vr.cfg) (Get-Content $DataDir\startup.cfg)
}