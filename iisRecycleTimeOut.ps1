$srvname = "Name of your Server"
Invoke-Command -ComputerName $srvrname -ScriptBlock{
$myApplicationPool = Get-WmiObject -Class IISApplicationPoolSetting -Namespace "root\microsoftiisv2" | Where-Object {$_.Name -eq 'W3SVC/APPPOOLS/AppPool_AdminService'}
$myApplicationPool.IdleTimeout=0
$myApplicationPool.PeriodicRestartSchedule={00:00}
$myApplicationPool.Put()
$myApplicationPool = Get-WmiObject -Class IISApplicationPoolSetting -Namespace "root\microsoftiisv2" | Where-Object {$_.Name -eq 'W3SVC/APPPOOLS/AppPool_AuthService'}
$myApplicationPool.IdleTimeout=0
$myApplicationPool.PeriodicRestartSchedule={00:00}
$myApplicationPool.Put()
$myApplicationPool = Get-WmiObject -Class IISApplicationPoolSetting -Namespace "root\microsoftiisv2" | Where-Object {$_.Name -eq 'W3SVC/APPPOOLS/AppPool_ContentService'}
$myApplicationPool.IdleTimeout=0
$myApplicationPool.PeriodicRestartSchedule={00:00}
$myApplicationPool.Put()
$myApplicationPool = Get-WmiObject -Class IISApplicationPoolSetting -Namespace "root\microsoftiisv2" | Where-Object {$_.Name -eq 'W3SVC/APPPOOLS/AppPool_EmailService'}
$myApplicationPool.IdleTimeout=0
$myApplicationPool.PeriodicRestartSchedule={00:00}
$myApplicationPool.Put()
$myApplicationPool = Get-WmiObject -Class IISApplicationPoolSetting -Namespace "root\microsoftiisv2" | Where-Object {$_.Name -eq 'W3SVC/APPPOOLS/AppPool_PartnerService'}
$myApplicationPool.IdleTimeout=0
$myApplicationPool.PeriodicRestartSchedule={00:00}
$myApplicationPool.Put()}