#Groupe de ressource
az group create --name Clement_Brief_8 -l northeurope

#App service plan
az appservice plan create -g Clement_Brief_8 -n Clement_Brief_8_Plan --is-linux  -l northeurope --sku P1V2 -z

#WebApp 
az webapp create -g Clement_Brief_8 -p Clement_Brief_8_Plan -n clementappbrief8 -r 'PHP:7.4'

#Mariadb Server
az mariadb server create -g Clement_Brief_8 -n clementmdb -l westeurope -u 'aclement' -p 'ExeslaY2524*' --sku-name GP_Gen5_2 --geo-redundant-backup Enabled --version 10.2

#Storage account
az storage account create -n clementstorage -g Clement_Brief_8 -l northeurope --sku Standard_GRS