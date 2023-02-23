#!bin/bash

ocker run  -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy:0.18.3 image   $1 > resultatanalyse.txt && awk "/^Total/{print}" resultatanalyse.txt
save=$(awk "/^Total/{print}" resultatanalyse.txt  | head -n1 | awk '{print $2;}')
echo $save
if [ $save -ne 0 ]; then
        echo "In If erreur détecté "
else
         
         echo " Tout va bien"


fi


