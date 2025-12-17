# SistemesOperatius-PAC3
Hi ha diversos scripts en la carpeta Scripts, ha continuació explicare que fa cada un.

## Scripts
### hellocloudnova.sh
Aquest script afegeix una linia al fitxer ja existent dins de la carpeta Logs, anomenat Welcome.log, i afegeix a aquest una linia de text així com la data i hora en que s'ha fet, esta programat per a executar-se cada 5 minuts en un cron, en la carpeta Config.

La part despres del >> es la ubicació on es guardara el fitxer així que si canvies la ruta hi hi ha un fitxer on desar-ho en aquell desti ho guardara, has d'haber creat el fitxer amb antelació, encara que estigui buit. 
## 
Coamnda ubicació:  >> /home/bernat/PAC3/logs/Welcome.log

### backups.sh
Aquest altre script crea un fitxer tar.gz en la carpeta Backups, esta fet per a que el tar sigui del directori /etc però es pot modificar per a que sigui de la ubicació desitjada.

En acabar de crear el tar el puja al github en el repositori on s'ha carregat aquest repositori, per a fer-ho es necessita una clau ssh en el repositori, aixì com indicar en la seguent linia del fitxer backups.sh el usuari.

##### Per ordre són: Comanda copia i opcions copia, ubicació on desar la copia i finalizant el nom de la copia, --one-file-system per a utilitzar només el sistema de fitxers del sistema, i la ubicació a copiar. 
tar -cvpzf /home/bernat/PAC3Git/SistemesOperatius-PAC3/Backups/backup.tar.gz –one-file-system /etc

##### su per a cridar a un altre usuari -c -i per a executar sense iniciar i per a utilitzar el ambient d'aquell usuari, el usuari en questio, i les coamndes a utilitzar, separades per ;.
En aquest cas es fa aixi ja que sino el script s'interromp, i s'ha d'executar amb un usuari diferent sense canviar aquest, el usuari ha de ser el que tingui la conexio amb ssh amb el github.

su -c -i bernat “cd /home/bernat/PAC3Git/SistemesOperatius-PAC3; git add -A; git commit -m “Copia diaria”; git push”


### createuser.sh
Aquest script crea un usuari amb el nom que li donguis per argument algo com: ./createuser.sh Bernat
I et demanaria la contrasenya a continuació, un cop fet l'usuari esta creat i amb el directori, la seva shell seria /bin/bash.


## Logs / Backups
En aquestes carpetes es guarden els fitxers creats per el hellocloudnova.sh i el backups.sh la ruta on es guarden es pot canviar en aquests scripts.

## Configs
Es troba aqui una copia del fitxer crontab en el que s'executen dos scripts el dels logs i el dels backups.
