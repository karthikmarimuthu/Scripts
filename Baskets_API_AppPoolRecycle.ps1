### App pool recycle for the Baskets API Servers ### -- TOTAL 6 SERVERS AU

Set-AWSCredential -ProfileName Ticketek
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='API-Baskets Prod-A CP-2'}).Instances)
$Inst.Count #| Get-Member
foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}

### App pool recycle for the Baskets API Servers ### -- TOTAL 6 SERVERS AU

Set-AWSCredential -ProfileName Ticketek
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='API-Baskets Prod-A CP-4'}).Instances)
$Inst.Count #| Get-Member
foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}

### App pool recycle for the Baskets API Servers ### -- TOTAL 6 SERVERS AU

Set-AWSCredential -ProfileName Ticketek
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='API-Baskets Prod-A CP-9'}).Instances)
$Inst.Count #| Get-Member
foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}