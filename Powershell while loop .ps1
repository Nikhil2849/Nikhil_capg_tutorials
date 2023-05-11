$i=0
$j=0
$k=0
while($i -ne 10)
{
$filename = "Nikhil"+$i
New-Item -Path $filename -ItemType directory
$filetext = "Objext"+$i+".txt"
New-Item -Path $filetext -ItemType File 
cd C:\TEMP\powershellwhile\$filename
while($j -ne 10){
$filename1 = "Nikhil"+$j
New-Item -Path $filename1 -ItemType directory
$objectname ="Object"+$j+".txt"
New-Item -path $objectname -ItemType File
cd C:\TEMP\powershellwhile\$filename\$filename1
while($k -ne 10){
$objectname2 = "Object"+$k+".txt"
New-Item -Path $objectname2 -ItemType File
Remove-Item C:\TEMP\powershellwhile\$filename\$filename1\$objectname2
cd C:\TEMP\powershellwhile\$filename\$filename1
$k=$k+1
}
Remove-Item C:\TEMP\powershellwhile\$filename\$objectname
cd C:\TEMP\powershellwhile\$filename
$j=$j+1
}
cd C:\TEMP\powershellwhile
$i=$i+1
}