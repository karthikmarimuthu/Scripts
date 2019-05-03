###########################################
#
#  Premier Frontdoor -Friendly LINK ONLY
#
#
###########################################

### Change the folder Name to the Name of the folder in the Friendly Link upload Request

$FolderName = "optusperkspostmalone"



$userDir = $env:USERPROFILE
Write-Host $userDir

#Direct distribution to Premier Desktop Frontdoor
Copy-Item $userDir\Downloads\default.htm \\10.130.240.143\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force
Copy-Item $userDir\Downloads\default.htm \\10.130.140.190\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force
Copy-Item $userDir\Downloads\default.htm \\10.130.140.21\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force
Copy-Item $userDir\Downloads\default.htm \\10.130.140.254\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force
Copy-Item $userDir\Downloads\default.htm \\10.130.140.82\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force



### Repliweb###
##Copy-Item C:\Users\angads\Downloads\busy.htm \\10.210.57.40\e$\Deploy\AU_Frontdoor -Verbose
##Copy-Item C:\Users\angads\Downloads\busy.html \\10.210.57.40\e$\Deploy\AU_Frontdoor -Verbose
##Copy-Item C:\Users\angads\Downloads\busy.html \\10.210.57.40\e$\Deploy\AU_Mobile_FrontDoor -Verbose


######################################################################################################################

#####################
#
# Copy the FOLDER ITSELF - if its not available on the server already
#
#
#####################


$FolderName = "optusperkspostmalone"



$userDir = $env:USERPROFILE
Write-Host $userDir

#Direct distribution to Premier Desktop Frontdoor
Copy-Item $userDir\Downloads\$FolderName -Recurse -Destination \\10.130.140.190\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force
Copy-Item $userDir\Downloads\$FolderName -Recurse -Destination \\10.130.240.143\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force
Copy-Item $userDir\Downloads\$FolderName -Recurse -Destination \\10.130.140.21\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force
Copy-Item $userDir\Downloads\$FolderName -Recurse -Destination \\10.130.140.254\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force
Copy-Item $userDir\Downloads\$FolderName -Recurse -Destination \\10.130.140.82\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Force



########################################################################################################################


#####################
#
# DELETE the Friendly LINK   - DELETE !!!
#
#
#####################


$FolderName = "optusperkspostmalone"



$userDir = $env:USERPROFILE
Write-Host $userDir

#Direct distribution to Premier Desktop Frontdoor
Remove-Item  \\10.130.140.190\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Recurse -Force
Remove-Item  \\10.130.240.143\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Recurse -Force
Remove-Item  \\10.130.140.21\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Recurse -Force
Remove-Item  \\10.130.140.254\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Recurse -Force
Remove-Item  \\10.130.140.82\c$\Ticketek\AU_Frontdoor\$FolderName -Verbose -Recurse -Force







