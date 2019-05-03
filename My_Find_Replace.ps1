

$SitePrefix = Read-Host -Prompt 'Input prefix' 

If ("${SitePrefix}" -eq "a") 
        {
          $GblSetConnKey = "TicketekAUConn4-Prod-A-Desktop-Website"
          $GblSetConnBouncerKey = "TicketekAUConn4-Prod-A-Desktop-Bouncer"
         }
   
   Else {
          $GblSetConnKey = "TicketekAUConn4-Prod-B-Desktop-Website"
          $GblSetConnBouncerKey = "TicketekAUConn4-Prod-B-Desktop-Bouncer"
        }

Write-Host "Your Key is '$GblSetConnKey' and '$GblSetConnBouncerKey' " 

(Get-Content C:\Users\karthik.marimuthu\Desktop\User.config).replace('GBLSET_KEY', $GblSetConnKey) | Set-Content C:\Users\karthik.marimuthu\Desktop\User.config
(Get-Content C:\Users\karthik.marimuthu\Desktop\User.config).replace('GBLSETBOUNCER_KEY', $GblSetConnBouncerKey) | Set-Content C:\Users\karthik.marimuthu\Desktop\User.config
