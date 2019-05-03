#List of the servers
$Servers = Get-Content "C:\TEG\Scripts\Servers.txt"
$Array = @()
 
#Looping each server
Foreach($Server in $Servers)
{
$Server = $Server.trim()

#$path = "D:\TicketekAU\Powerweb\Premier"
$path = "C:\TEG\Git\TKTAU-Content-PRM"
# switch path.
cd $path

# Get git status.
#git checkout pre-prod-PCI-AU
git status
}