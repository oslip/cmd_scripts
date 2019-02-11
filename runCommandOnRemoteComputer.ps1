#How to Run PowerShell Commands on Remote Computers
=================
#Enable PowerShell Remoting on the PC You Want to Access Remotely
enable-psremoting -force ## on the PC to which you want to make remote connections.
=================
#Set Up Your Workgroup
Set-Item wsman:\localhost\client\trustedhosts * ## on both PC
Restart-Service WinRM
=================
#Test the Connection
Test-WsMan COMPUTER
