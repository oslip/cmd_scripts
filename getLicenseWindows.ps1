## Get license key for your Windows
wmic path softwarelicensingservice get OA3xOriginalProductKey
powershell “(Get-WmiObject -query ‘select * from SoftwareLicensingService’).OA3xOriginalProductKey”