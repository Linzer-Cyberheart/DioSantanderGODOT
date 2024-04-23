extends CharacterBody2D
#Desafio Classificador de nível de Herói
#**O Que deve ser utilizado**
#- Variáveis
#- Operadores
#- Laços de repetição
#- Estruturas de decisões
#Objetivo
#Crie uma variável para armazenar o nome e a quantidade de experiência (XP) de um herói, 
#depois utilize uma estrutura de decisão para apresentar alguma das mensagens abaixo:
#Se XP for menor do que 1.000 = Ferro
#Se XP for entre 1.001 e 2.000 = Bronze
#Se XP for entre 2.001 e 5.000 = Prata
#Se XP for entre 5.001 e 7.000 = Ouro
#Se XP for entre 7.001 e 8.000 = Platina
#Se XP for entre 8.001 e 9.000 = Ascendente
#Se XP for entre 9.001 e 10.000= Imortal
#Se XP for maior ou igual a 10.001 = Radiante
#Saída
#Ao final deve se exibir uma mensagem:
#"O Herói de nome **{nome}** está no nível de **{nivel}**"

var hero_name = "noname" #Nome do herói
var xp = 0 #XP do herói
var rank = "none" #Rank do herói
var y = 0 #Variavel apenas para mostrar uma única vez o resultado

func _physics_process(delta):
	while y == 0:
		hero_rank_calculator(4005) #Seleciona quantidade de XP
		hero_select_name("Linzer") #Seleciona nome do herói
		hero_show_message()
		y = 1

func hero_rank_calculator(xp):
	if xp <= 1000:
		rank = "Ferro"
	elif xp >= 1001 and xp <= 2000:
		rank = "Bronze"
	elif xp >= 2001 and xp <= 5000:
		rank = "Prata"
	elif xp >= 5001 and xp <= 7000:
		rank = "Ouro"
	elif xp >= 7001 and xp <= 8000:
		rank = "Platina"
	elif xp >= 8001 and xp <= 9000:
		rank = "Ascendente"
	elif xp >= 9001 and xp <= 10000:
		rank = "Imortal"
	elif xp >= 10001:
		rank = "Radiante"

func hero_select_name(yourname):
	hero_name = yourname

func hero_show_message():
	print('O Herói de nome '+hero_name+' está no nível de '+rank+'.')
