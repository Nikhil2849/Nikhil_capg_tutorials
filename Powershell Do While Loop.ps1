$i=0

do
{
$filename = "Nikhil"+$i
New-Item -Path $filename -ItemType directory
$filetext = "Objext"+$i+".txt"
New-Item -Path $filetext -ItemType File
 

cd C:\TEMP\powershelldowhile\$filename
$j=0
do{
$filename1 = "Nikhil"+$j
New-Item -Path $filename1 -ItemType directory
$objectname ="Object"+$j+".txt"
New-Item -path $objectname -ItemType File

cd C:\TEMP\powershelldowhile\$filename\$filename1
$k=0
do{
$objectname2 = "Object"+$k+".txt"
New-Item -Path $objectname2 -ItemType File
Remove-Item C:\TEMP\powershelldowhile\$filename\$filename1\$objectname2
cd C:\TEMP\powershelldowhile\$filename\$filename1
$k=$k+1
}
while($k -ne 10)
Remove-Item C:\TEMP\powershelldowhile\$filename\$objectname
cd C:\TEMP\powershelldowhile\$filename
$j=$j+1

}
while($j -ne 10)
cd C:\TEMP\powershelldowhile
$i=$i+1
}
while($i -ne 10)