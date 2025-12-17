#!/bin/bash

tar -cvpzf /home/bernat/PAC3Git/SistemesOperatius-PAC3/Backups/backup.tar.gz --one-file-system /etc

su -c -i bernat  "cd /home/bernat/PAC3Git/SistemesOperatius-PAC3/; git add -A; git status; git commit -m 'Copia Diaria'; git push"
