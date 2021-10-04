Acessar pelo putty o ip do terminal

cd /etc/

vi wpslogger.conf
ENABLE=1
TYPE=LOCAL

Conferir IP

[LOCAL]
Path=/WPSBrasil/log


# Conferir 
cat wpslogger.conf

cd /WPSBrasil/log

# Confirmar a data que está na pasta com a do dia
tail -f 20210716.wpslog

