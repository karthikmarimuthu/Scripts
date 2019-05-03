###PowerShell Script to start and Stop based on the input in Jenkins Job
# Get credentials

Get-AWSCredential -ListProfileDetail

#use the right one

#$Site = "Hotshow hotshow4 *"
#$Site = "Hotshow hotshow2 *"
Set-AWSCredential -ProfileName teg-prod-au

$instances = ""
$instances = Get-EC2Instance -Filter @(
    @{name = 'tag:Name'; values = "$Site"}
 #   @{name = 'tag:Server'; values = "ActiveNow"}
)

$Status = Read-Host -Prompt 'Input your status' 

foreach ($instance in $instances)
{
 $InstanceId = $instance.Instances.InstanceId
If ($Status -eq "Start") 
    {
        if ((Get-EC2InstanceStatus -InstanceId $InstanceId).InstanceState.Name.Value) 
             {
                Write-Host "'$InstanceId' is already switched on"
             }
        Else
              {
                Write-Host "Attempting to start instance:" $($instanceId)
                Start-EC2Instance -InstanceId $InstanceId
              }
    }

Else
    {
   
      if (-not (Get-EC2InstanceStatus -InstanceId $InstanceId).InstanceState.Name.Value) 
            {
                Write-Host "'$InstanceId' is already switched off"
            }
      Else
              {
                Write-Host "Attempting to stop instance:" $($instanceId)
                Stop-EC2Instance -InstanceId $InstanceId
              }
    }
}

#$instances.Count #| Get-Member
#foreach ($instance in $instances)
#{
#    $InstanceId = $instance.Instances.InstanceId
#    Write-Host "Attempting to stop instance:" $($instanceId)
#    Stop-EC2Instance -InstanceId $InstanceId
#    Start-Sleep 5
#    if (-not (Get-EC2InstanceStatus -InstanceId $InstanceId).InstanceState.Name.Value) 
#    {
#        Write-Host "'$InstanceId' is switched off"
#    }
#}