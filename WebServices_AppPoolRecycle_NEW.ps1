### NEW Scripts  #### 

####  Premier / hotshow Web services AU  #### 
### tested log file entry  - event viewer for "Services AU" app pool , Source --> WAS  (Private IP: 10.130.120.250)  #### 
Get-AWSCredential -ListProfileDetail
Set-AWSCredential -ProfileName ticketek
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='WebservicesAU'}).Instances)
$Inst.Count #| Get-Member

foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}


### Web services for ASPECT
Set-AWSCredential -ProfileName ticketek
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='WebservicesAU for Aspect'}).Instances)
$Inst.Count #| Get-Member

foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}



### Web services for ORIGIN
Set-AWSCredential -ProfileName ticketek
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='WebservicesAU for Origin'}).Instances)
$Inst.Count #| Get-Member

foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}




### Web services for INTERNAL APPLICATION 
Set-AWSCredential -ProfileName ticketek
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='Webservices Internal Application'}).Instances)
$Inst.Count #| Get-Member

foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}


### Web services for WebservicesNZ A 

Set-AWSCredential -ProfileName ticketek
$Inst = ((Get-EC2Instance -Region ap-southeast-2 -Filter @{name='tag:Name';values='WebservicesNZ A'}).Instances)
$Inst.Count #| Get-Member

foreach ($Instance in $Inst){
$InstanceID = $Instance.InstanceId

$commandOutput = (aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids $InstanceID --parameters commands=["& $env:windir\system32\inetsrv\appcmd list apppools /state:Started /xml | & $env:windir\system32\inetsrv\appcmd recycle apppools /in"] --profile default --region ap-southeast-2 --timeout-seconds 600 --output text)

$stringed = $commandOutput | Out-String
$commandId = $stringed.Substring(8,36)
Write-host "Command ID is" $commandId


Start-Sleep -s 1

}