$Contents = Get-Content "C:\TEG\AWS\hotshow\servers.txt"

foreach($Line in $Contents) {
  $Line = $Line.split(":")[1]
  $s = $line -split ':'
  $Server = $s[1]
  $Password = $s[2]
  Write-host $Server $Password

  # do here the operations
}