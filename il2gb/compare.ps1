. .\common.ps1

Compare-Object (Get-Content .\startup.cfg) (Get-Content $DataDir\startup.cfg)
