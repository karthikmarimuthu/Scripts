Param
(
    #This is the name of your SQL Alias
    [string] $AliasName
)


Function Exists-RegistryValue {
    param(
        [Alias("PSPath")]
        [Parameter(Position = 0, Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [String]$Path
        ,
        [Parameter(Position = 1, Mandatory = $true)]
        [String]$Name
    ) 

    process {
        if (Test-Path $Path) {
            $Key = Get-Item -LiteralPath $Path
            if ($Key.GetValue($Name, $null) -ne $null) {
                $true
            } else {
                $false
            }
        } else {
            $false
        }
    }
}

#$AliasName = "Alias2"
 
#This is the name of your SQL server (the actual name!)
#$ServerName = "ServerName2"
 
#These are the two Registry locations for the SQL Alias locations
$x86 = "HKLM:\Software\Microsoft\MSSQLServer\Client\ConnectTo"
$x64 = "HKLM:\Software\Wow6432Node\Microsoft\MSSQLServer\Client\ConnectTo"
 
#We're going to see if the ConnectTo key already exists, and create it if it doesn't.
if ((test-path -path $x86) -ne $True)
{
    write-host "$x86 doesn't exist"
}
else
{
    if ((Exists-RegistryValue $x86 $AliasName))
    {
        $key = Get-Item -LiteralPath $x86
        $item = $key.GetValue($AliasName, $null)

        Write-Host $AliasName "32-bit" $item
    }
    else
    {
        Write-Host $AliasName "32-bit" does not exist
    }
}

if ((test-path -path $x64) -ne $True)
{
    write-host "$x64 doesn't exist"
}
else
{   
    if ((Exists-RegistryValue $x64 $AliasName))
    {
        $key = Get-Item -LiteralPath $x64
        $item = $key.GetValue($AliasName, $null)

        Write-Host $AliasName "64-bit" $item
    }
    else
    {
        Write-Host $AliasName "64-bit" does not exist
    }
}
 
 


