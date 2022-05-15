. .\common.ps1

Compare-Object (Get-Content .\startup.cfg) (Get-Content $DataDir\startup.cfg)
Compare-Object (Get-Content .\openvr_mod.cfg) (Get-Content $GameDir\openvr_mod.cfg)
