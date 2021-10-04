#1 - Ativar o painel no Manager
	Monitor
		Configurações avançadas
			#
			Seção - Config_ODBT
			Chave - Ativar ODBT
			Ativar todas = 1
			#
			Seção - Notificação Sinais
			Chave - Ativar
			Ativar todas = 1
			#
			Seção - TAG N
			Chave - Ativar Terminal
			Manter todas = 0

#2 - Configurar o serviço
	Monitor
		Serviços Tag Pag.Auto (EasyAccess - Veloe Tag3 ou GreenPass)
			
			#
			ws_enable = 1 --> Após isso reiniciar o Manager
			#
			ws_passwd = veloe123 ou greenpass123
			#
			user = veloe ou greenpass
			#
			term_gerar_rps_saida = 1
			
			#REINICIAR
			Reiniciar todos os terminais
			
#3 - Copiar a série da antena nas estações
	Monitor
		Estações Tag Pag.Auto
		
			# Selecionar a pista
			# CodeKey
			# Escolher a OSA
			# Copiar a série para envio ao Jonathan
			
				Exemplo:
				MACEIO SHOPPING
				VELOE
				ENT G PAIVA 1 - RP45Z7D2858X9WR58W7J-5

			
#4 - Inserir as chaves das antenas nas estações
	Monitor
		Estações Tag Pag.Auto
			
			# Selecionar a pista
			# CodeKey
			# Escolher a OSA
			# Inserir a empresa
			# Inserir a garagem
			# Inserir a chave