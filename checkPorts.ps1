Test-NetConnection -Port 443 -ComputerName example.com
New-Object net.sockets.tcpClient "example.com", 443
telnet example.com 443   
nslookup -Port=443 example.com
