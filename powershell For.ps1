$i=0
for($i;$i -lt 10;)
{
$filename = 'Nikhil'+$i
New-Item -Path $filename -ItemType directory
$filetext = 'Nikhil'+$i+'.txt'
New-Item -Path $filetext -ItemType File
cd C:\TEMP\PowershellFOR\$filename
for($j=0;$j -lt 10;)
{
$filename0 ='Nikhil'+$j
New-Item -Path $filename0 -ItemType directory
$objectname ='Nikhilj'+$j+ '.txt'
New-Item -path $objectname -ItemType File
cd C:\TEMP\PowershellFOR\$filename\$filename0
for($k=0; $k -lt 10;$k++)
{
$filename1 ='Nikhil'+$k+'.txt'
New-Item -path $filename1 -ItemType File
Remove-Item C:\TEMP\powershellFOR\$filename\$filename0\$filename1
cd C:\TEMP\PowershellFOR\$filename\$filename0
}
Remove-Item C:\TEMP\powershellFOR\$filename\$objectname
cd C:\TEMP\powershellFOR\$filename
$j=$j+1
}
cd C:\TEMP\PowershellFOR
$i=$i+1
}