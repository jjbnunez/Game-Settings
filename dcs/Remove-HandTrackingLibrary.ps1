$binPath = "C:\Program Files\Eagle Dynamics\DCS World OpenBeta\bin"
$binMtPath = "C:\Program Files\Eagle Dynamics\DCS World OpenBeta\bin-mt"
$fileName = "dbghelp.dll"

Remove-Item "$binPath/$fileName" -Force
Remove-Item "$binMtPath/$fileName" -Force