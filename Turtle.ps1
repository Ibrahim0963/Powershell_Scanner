$port = Read-Host "Enter Port To Scan [Many Port split with comma (,)] "
$ip = Read-Host "Enter IP To Scan "

if ($port -like "*,*"){

    $port = $port.Split(",")
}

echo "#### Scanning Started ####"

foreach($p in $port){
try{

$socket=New-Object System.Net.Sockets.TcpClient($ip,$p)

}catch{}

if($socket -eq $null){echo "$ip :$p - Closed"}

else{ 

echo "$ip :$p  - Open";
$socket=$null;

}}

echo "#### Scanning Finished ####";
