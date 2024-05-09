$module_location = Resolve-Path './InnovConfig/InnovConfig.psm1'
if ( Get-Module InnovConfig) { Remove-Module -Name InnovConfig }  # always use latest
Import-Module $module_location  # load module from Repo
Read-MasterConfig  # sets module scope variables

Write-Host "Enter Step"
Write-Host "1 = Restore baseline DB and Import Packages"
Write-Host "2 = Config-Report"
Write-Host "3 = Export-Changes"
$step = Read-Host
switch ($step) {
    1   {
            Write-Host -ForegroundColor Cyan "Database will be overwritten, enter Y to continue?"
            $resp = Read-Host
            if ($resp.ToUpper() -ne 'Y') { Exit }
            Connect-Innov 'root'
            Restore-Database
            Import-Packages
        }   
    2   {
            # uses sql sa login
            Export-ConfigReport
        }
    3   {
            Connect-Innov 'root'    
            Export-Changes
        }
     
}




