#!/bin/bash

echo "Criando usuários do sistema"

useradd visitante1 -c "Usuário Visitante1" -s /bin/bash -m -p $(openssl passwd 123456)
passwd visitante1 -e

useradd visitante2 -c "Usuário Visitante2" -s /bin/bash -m -p $(openssl passwd 123456)
passwd visitante2 -e

useradd visitante3 -c "Usuário Visitante3" -s /bin/bash -m -p $(openssl passwd 123456)
passwd visitante3 -e

useradd visitante4 -c "Usuário Visitante4" -s /bin/bash -m -p $(openssl passwd 123456)
passwd visitante4 -e

useradd visitante5 -c "Usuário Visitante5" -s /bin/bash -m -p $(openssl passwd  123456)
passwd visitante5 -e

echo "Fim da criação dos usuários"





