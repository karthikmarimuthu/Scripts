$Server="10.131.91.177"
$User="domain\Administrator"
$Password="(2zBTcu&Rv"
cmdkey /generic:TERMSRV/$Server /user:$User /pass:$Password
mstsc /v:$Server