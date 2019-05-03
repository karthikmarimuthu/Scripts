### App pool recycle for HotShow Stack ###

Set-AWSCredential -ProfileName teg-prod-au
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='Hotshow hotshow4 B Stack-B'}).Instances)
$Inst.Count #| Get-Member
foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}

Set-AWSCredential -ProfileName teg-prod-au
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='Hotshow hotshow4 A Stack-B'}).Instances)
$Inst.Count #| Get-Member
foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}