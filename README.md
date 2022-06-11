# SERVIDOR GATEWAY (Debian 8.5)
## **_configurar placa de rede_**
`root@debian:~# nano /etc/network/interfaces`

> copiar o script interfaces

após isso, reinicie o serviço de rede.

`root@debian:~# service networking restart`

para conferir o resultado é só rodar o comando `ifconfig`

---

## **_Criar script para atualizar o sistema_**

editar o arquivo que armazena os links dos repositórios que o sistema usa para se atualizar e buscar pacotes.

`root@debian:~# nano /etc/apt/sources.list`

> copiar o script source.list

após isso, crie o script para atualizar o sistema.

`root@debian:~# nano /etc/init.d/update.sh`

> copiar o script update.sh

após isso, dê permissão para o script e crie um link para ele dentro de /bin

`root@debian:~# chmod 750 /etc/init.d/update.sh`

`root@debian:~# ln /etc/init.d/update.sh /bin/update`

rode o script

`root@debian:~# update`

---

## **_Configurar serviço bind9(DNS)**_

primeiramente precisamos fazer a instalação dos serviços.

`root@debian:~# apt-get install -y bind9 bind9-doc dnsutils`

após isso vamos editar o arquivo localizado em **/etc/bind/named.conf.options**

`root@debian:~# nano /etc/bind/named.conf.options`

> copiar o script named.conf.options

após isso, rode o comando `named-checkconf` para verificar se a sintaxe está correta.

altere o arquivo **/etc/resolv.conf**

`root@debian:~# echo nameserver 127.0.0.1 > /etc/resolv.conf`

dentro do arquivo em **/etc/nsswitch.conf** mude *host: * para *host: files dns*

após isso, reinicie o serviço do bind9

`root@debian:~# service bind9 restart`

para confirmar se está tudo rodando corretamente:

`root@debian:~# systemctl -l status bind9.service`

---
