Português
Fuso - Etc-GMT+3
Desativar Kdump

Rede (atentar para qual placa está configurando)
--> Em geral marque a opção "Conectar automaticamente..."
--> Nome do HOST "servidor"
--> Em Configurações IPV4 "125.125.10.100 255.255.255.0" ou o que o shopping exigir
--> Em Configurações IPV6 "Ignorar"

Particionamento ¬
/ - 60 gib
/boot - 1024 mib
swap - 4092 mib

/var/lib/docker - 60 gib
/var/log - 50gib
/var/lib/postgresql - 150 gib
/backup - 

############################################################################################

ip addr
vi /etc/sysconfig/network-scripts/ifcfg-nome da placa de rede ***
ifup nome da placa de rede
blkid
mount /dev/sdb1 /media
cd /media
ls -lha
cd /
mkdir instalacoes
cd /media/Servidor
cp -r * /instalacoes
cd /instalacoes/RPMS
yum localinstall *.rpm
logout
pkplus-cli install-server --offline
pkplus-cli svc list -a
pkplus-cli svc import-file /instalacoes/ServicosBasicos/*
cd /media
cp -r tftpboot/ /
pkplus-cli svc enable base:dhcp
pkplus-cli svc reenable base:dhcp && journalctl -f CONTAINER_TAG=base:dhcp
vi /etc/dhcp/dhcpd.conf --> configurar os macs
pkplus-cli svc enable base:bootremoto
pkplus-cli svc enable base:postgres
pkplus-cli svc reenable base:postgres && journalctl -f CONTAINER_TAG=base:postgres
pkplus-cli svc list -a
vi /var/lib/postgresql/data/pgdata/pg_hba.conf --> editar host all all ip
yum install epel-release -y
yum install java-11-openjdk-devel
java -version
cd /instalacoes
yum install unzip
unzip parkingplus-7.358.3.zip
cd parkingplus-7.358.3/Linux/PPABD/Atualizacao/parkingplusatualizadorbd/bin
bash parkingplusatualizadorbd
tablespace --> pg_default
atualizar Manager (se a versão for diferente)
botão direito / abrir local do arquivo / Monitor / acertar ip servidor
abrir o Manager
abrir pgadmin - INSERT INTO usuarios( nome, senha, perfil ) VALUES( 'NOME', MD5('SENHA'), 'WPSBRASIL' ); -- > CRIAR DOIS
USERS DIFERENTES
logar no manager
configurações - monitor - estações
criar as estações - entrada, saida, caixa...