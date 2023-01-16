[CmdletBinding()]
param (
	[Parameter(Mandatory)]
	[String]
	$Name
)

. .\common.ps1
$ScriptDir = (Get-Item $PSCommandPath).Directory
Write-Host $ScriptName

$PathToPlaneGraphics = Join-Path $DataDir "\graphics\Planes"

$ListOfPlanes = Get-ChildItem -Path $PathToPlaneGraphics -Directory | Select-Object BaseName

$ListOfPlanes | ForEach-Object {
	$stepOne = Join-Path $PathToPlaneGraphics $_.BaseName
	$stepTwo = Join-Path $stepOne "\Textures\custom_photo.dds"
	$stepThree = Join-Path $stepOne "\Textures\custom_photo_backup.dds"
	$testOne = Test-Path $stepTwo
	$testTwo = Test-Path $stepThree
	if (-not $testOne) {
		Write-Host $_.BaseName "doesn't have a custom_photo.dds file"
	}
	if (-not $testTwo) {
		Write-Host $_.BaseName "doesn't have a BACKUP custom_photo.dds file"
		Copy-Item -Force -Path $stepTwo -Destination $stepThree
	}
}

$ListOfPlanes | ForEach-Object {
	$stepOne = Join-Path $PathToPlaneGraphics $_.BaseName
	$stepTwo = Join-Path $stepOne "\Textures"
	$PhotoPath = (Join-Path $ScriptDir "\pinups\${Name}.dds")
	Write-Host "Copying item from" $PhotoPath "to" "${stepTwo}\custom_photo.dds"
	Copy-Item -Force -Path $PhotoPath -Destination "${stepTwo}\custom_photo.dds"
}