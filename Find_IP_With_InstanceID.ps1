
$InstanceID = "i-017d59ae8b402273f" ## Enter the instance ID here ##

foreach ($InstID in $InstanceID)
    {
        $error.Clear()
        try {
                Set-AWSCredential -ProfileName teg-prod-au ##Rename it to the profile how you have configured##
                $Instance = (Get-EC2Instance -Region ap-southeast-2 -InstanceId $InstID)
                $Instance.Instances.tags
                $ipAddrs=$Instance.Instances.PrivateIpAddress
            }

    catch {"Error"}
        If ($error) { 
                        Set-AWSCredential -ProfileName ticketek ##Rename it to the profile how you have configured##
                        $Instance = (Get-EC2Instance -Region ap-southeast-2 -InstanceId $InstID)
                        Write-Host "$Instance"
                        $Instance.Instances.tags
                        $ipAddrs=$Instance.Instances.PrivateIpAddress
                        
                    }

    If ($ipAddrs -like "10.130*")
        {
           Write-host "The Private IP Address is "$ipAddrs"; Login to Ticketek AWS Account" -ForegroundColor Green
           Write-host "Details of the Instance tags below"
           }
           Else {
           Write-host "The Private IP Address is "$ipAddrs"; Login to Ticketek AWS Account" -ForegroundColor Red
           Write-host "Details of the Instance tags below"
        }

    }