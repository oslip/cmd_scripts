## GetContent and move content to file
Get-Content mylogfile.txt | Where-Object { $_.Contains("ERROR") } >>result.txt