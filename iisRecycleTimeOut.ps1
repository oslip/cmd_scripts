$srvname = "Name of your Server"
Invoke-Command -ComputerName $srvrname -ScriptBlock{
$myApplicationPool = Get-WmiObject -Class IISApplicationPoolSetting -Namespace "root\microsoftiisv2" | Where-Object {$_.Name -eq 'W3SVC/APPPOOLS/$srvname'}
$myApplicationPool.IdleTimeout=0
$myApplicationPool.PeriodicRestartSchedule={00:00}
$myApplicationPool.Put()