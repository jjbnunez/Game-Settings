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

Compare-Object (Get-Content $ScriptDir\openvr_mod.cfg) (Get-Content $GameDir\openvr_mod.cfg)