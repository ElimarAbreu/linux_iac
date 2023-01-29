#!/bin/bash

echo "Status: criando diretórios..."
mkdir /publico /adm /ven /sec

echo "Status: criando grupos de usuários..."
for group in GRP_ADM GRP_VEN GRP_SEC;do groupadd -r ${group};done

echo "Status: criando usuários e adicionando aos grupos..."
useradd carlos -c "Carlos Alberto" -m -s /bin/bash -p $(echo 'U$er@321' | openssl passwd -1 -stdin) -G GRP_ADM 
useradd maria -c "Maria Betânia"-m -s /bin/bash -p $(echo 'U$er@321' | openssl passwd -1 -stdin) -G GRP_ADM 
useradd joao -c "João Couto" -m -s /bin/bash -p $(echo 'U$er@321' | openssl passwd -1 -stdin) -G GRP_ADM 
useradd debora -c "Debora Dias" -m -s /bin/bash -p $(echo 'U$er@321' | openssl passwd -1 -stdin) -G GRP_VEN
useradd sebastiana -c "Sebastiana Elegante" -m -s /bin/bash -p $(echo 'U$er@321' | openssl passwd -1 -stdin) -G GRP_VEN 
useradd roberto -c "Roberto Falcão" -m -s /bin/bash -p $(echo 'U$er@321' | openssl passwd -1 -stdin) -G GRP_VEN
useradd josefina -c "Josefina Galvão" -m -s /bin/bash -p $(echo 'U$er@321' | openssl passwd -1 -stdin) -G GRP_SEC
useradd amanda -m -c "Amanda Hugo" -s /bin/bash -p $(echo 'U$er@321' | openssl passwd -1 -stdin) -G GRP_SEC
useradd rogerio -c "Rogério Ilson" -m -s /bin/bash -p $(echo 'U$er@321' | openssl passwd -1 -stdin) -G GRP_SEC

echo "Status: especificando permissões dos diretórios..."
chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chown 770 /adm
chown 770 /ven
chown 770 /sec
chown 777 /publico

echo "Status: concluido!"


