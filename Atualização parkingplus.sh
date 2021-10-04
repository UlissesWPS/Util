Atualização.

#1 - Parar o crontab (linux).
	service crond stop

#2 - Realizar um vacuum full pelo console do servidor (linux).
	[CentOS5] vacuumdb -h 125.125.10.100 -d parkingplus -f -v -U postgres -W 
	[CentOS7] vacuumdb -d parkingplus -f -v -U postgres 
	
#3 - Criar backup do banco de dados (linux).

#FAÇA BACKUP!!!

Se for após o expediente, faça.
	[CentOS5] pg_dump -U postgres -v -i -h 125.125.10.100 -F c -b -f /backup/parkingplus.backup parkingplus > /backup/backup.log 2>&1
	[CentOS7] No container, dentro do diretório: /var/lib/postgresql/data/pgdata, executar:
			pg_dump -U postgres -v -i -F c -b -f parkingplus.backup parkingplus > backup.log 2>&1
		O log poderá ser visualizado no servidor no mesmo diretório
	
#4 - Atualização de Sistema:
    4.1 - Desfazer passo 1;
		service cond start
		
    4.2 - Copiar as pastas (dentro do diretório do Manager):
		--> PPABD* (*somente para atualizar toda a garagem), Monitor.ini, configpkplus.conf, Relatorios
		
	4.3 - Copiar para a pasta /instalacoes/versoes o diretório de instalação
		--> Ex.: ParkingPlus-7.364.4
	
	4.4 - Atualizar Manager;
	
	4.5 - Voltar Monitor.ini, configpkplus.conf e Relatorios para a pasta do Manager
		--> Propriedades / Executar...modo de compatibilidade / Windows XP (SP3)
						 / Executar... como administrador
						 / Aplicar
						 
    4.6 - Atualizar VOIP;
	
    4.7 - Atualizar Terminais;
		--> No Manager:
			--> Configurações / Monitor / Atualizar Software
				--> C:\Users\WPS Brasil\Desktop\ParkingPlus-7.364.4\Linux\PPT\Atualizacao\ParkingPlusTerminalLCD
    
	4.8 - Atualizar Caixas (Se o caixa for linux, atualizar como o Manager);
		--> No Manager:
			--> Configurações / Monitor / Atualizar Software
				--> C:\Users\WPS Brasil\Desktop\ParkingPlus-7.364.4\Linux\PPC\Atualizacao
				
	4.9 - Inserir chaves das antenas de OSA (SE A VERSÃO FOR ABAIXO DA 7.329)
		--> Estações Tag Pag Auto
				
	4.9 - Reinicar Terminais e Caixas;
		--> A reinicialização pode ser via terminal linux, navegador com o ip ou física.
		
	4.10 - Atualizar demais estações;
    
	4.11 - Testar emissão de ticket no(s) TE;
    
	4.12 - Testar Saída no(s) TS e ou DN;
    
	a.13 - Testar TPA;
    
	a.14 - Testar PF e EPA (até o momento da senha);
    
	#FIM.