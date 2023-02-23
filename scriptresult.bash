#!bin/bash

docker run aquasec/trivy image   python:3.10.8-alpine3.17 > resultatanalyse.txt && awk "/^Total/{print}" resultatanalyse.txt
save=$(awk "/^Total/{print}" resultatanalyse.txt  | head -n1 | awk '{print $2;}')
echo $save
if [ z "$save"]; then
        echo "In If erreur détecter "
else
         if [ $save -ne 0 ]; then
         echo " error"

         fi
fi


