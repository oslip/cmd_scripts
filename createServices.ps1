# Create service with parametrs

$secpasswd = ConvertTo-SecureString "{password}" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential (".\serv", $secpasswd)
$servName="{service_name}"
$location="{path_to_file}"
$displayName="{display_name}"
$serviceSescription="{sec_scription}"
New-Service -Name $servName -BinaryPathName $location -DisplayName $displayName -StartupType Automatic -Description $serviceDescription -Credential $mycreds

#example
$secpasswd = ConvertTo-SecureString "123QWEasdZXC" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential (".\serv", $secpasswd)
$servName="TestService5"
$location="C:\WINDOWS\System32\svchost.exe"
$displayName="Test Service5"
$serviceSescription="My desk"
New-Service -Name $servName -BinaryPathName $location -DisplayName $displayName -StartupType Automatic -Description $serviceDescription -Credential $mycreds
