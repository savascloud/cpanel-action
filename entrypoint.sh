#!/bin/sh -l

echo "username: $1"
echo "token: $2"
echo "hostname: $3"
#time=$(date)
#echo "::set-output name=time::$time"
#php -f /index.php $1 $2 $3
result=$(curl --silent -H"Authorization: cpanel $1:$2" "https://$3:2083/execute/VersionControl/retrieve?fields=name,type,branch,last_update")
#echo "::set-output name=result::$result"
echo $result