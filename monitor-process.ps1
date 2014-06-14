while ($p = Get-Process -Id 4628) {
$p.Name + " : " + $p.WS + " : " + $p.CPU
Start-Sleep -s 10
}
