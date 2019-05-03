
#########################################################################################################################################

##### HOTSHOW 4 #################

$userDir = $env:USERPROFILE
Write-Host $userDir

Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Desktop\User.config \\10.130.40.211\c$\Ticketek\AU_Frontdoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Desktop\User.config \\10.130.40.60\c$\Ticketek\AU_Frontdoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Desktop\User.config \\10.130.140.151\c$\Ticketek\AU_Frontdoor2\Config -Verbose -Force

### New Hotshow Frontdoors--DESKTOP
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Desktop\User.config \\10.130.40.67\c$\Ticketek\AU_Frontdoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Desktop\User.config \\10.130.40.11\c$\Ticketek\AU_Frontdoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Desktop\User.config \\10.130.140.17\c$\Ticketek\AU_Frontdoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Desktop\User.config \\10.130.140.226\c$\Ticketek\AU_Frontdoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Desktop\User.config \\10.130.140.64\c$\Ticketek\AU_Frontdoor2\Config -Verbose -Force

#Direct distribution to Mobile Frontdoor
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Mobile\user.config \\10.130.40.211\c$\Ticketek\AU_Mobile_FrontDoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Mobile\user.config \\10.130.40.60\c$\Ticketek\AU_Mobile_FrontDoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Mobile\user.config \\10.130.140.151\c$\Ticketek\AU_Mobile_FrontDoor2\Config -Verbose -Force

### New Hotshow Frontdoors  - MOBILE Page

Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Mobile\user.config \\10.130.40.67\c$\Ticketek\AU_Mobile_FrontDoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Mobile\user.config \\10.130.40.11\c$\Ticketek\AU_Mobile_FrontDoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Mobile\user.config \\10.130.140.17\c$\Ticketek\AU_Mobile_FrontDoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Mobile\user.config \\10.130.140.226\c$\Ticketek\AU_Mobile_FrontDoor2\Config -Verbose -Force
Copy-Item $userDir\Downloads\UserConfHot2Frntdr\Prod-A\Mobile\user.config \\10.130.140.64\c$\Ticketek\AU_Mobile_FrontDoor2\Config -Verbose -Force


