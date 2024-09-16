import random
import time
import os
from colorama import Fore, Back, Style

jogo = []
apostas = []

print("="*40)
print("Jogo da memória")
print("="*40)
nome = input("Nome do jogador: ")
pontos = 0 


temp = "🐢🐢🐇🐇🐳🐳🐠🐠🐪🐪🐘🐘🦓🦓🦁🦁"
figuras = list(temp)

def preenche_matriz():
  for i in range(4):
    jogo.append([])
    apostas.append([])
    for _ in range(4):
      num = random.randint(0, len(figuras)-1)
      jogo[i].append(figuras[num])
      apostas[i].append("🟥")
      figuras.pop(num)

def mostra_tabuleiro():
  os.system("cls")
  print("   1   2   3   4")
  for i in range(4):
    print(f"{i+1}", end="")
    for j in range(4):
      print(f" {jogo[i][j]} ", end="")
    print("\n") 

  print("Memorize a posição dos bichos...") 
  time.sleep(2)

  print("Contagem Regressiva: ", end="")
  for i in range(10, 0, -1):
    print(i, end=" ", flush=True)
    time.sleep(1)
  
  os.system("cls")

def mostra_apostas():
  os.system("cls")
  print("   1   2   3   4")
  for i in range(4):
    print(f"{i+1}", end="")
    for j in range(4):
      print(f" {apostas[i][j]} ", end="")
    print("\n") 

preenche_matriz()
mostra_tabuleiro()

def faz_aposta(num):
  while True:
    mostra_apostas()
    aposta = input(f"{num}ª Coordenada (2 números: linha e coluna): ")
    if len(aposta) != 2:
      print("Informe uma dezena, por exemplo, 12, 24, 31...")
      time.sleep(2)
      continue
    x = int(aposta[0])-1
    y = int(aposta[1])-1
    try:
      if apostas[x][y] == "🟥":
        apostas[x][y] = jogo[x][y]
        break
      else:
        print("Coordenada já apostada... escolha outra")
        time.sleep(2)
    except IndexError:
      print("Coordenada inválida... repita")
      time.sleep(2)
  return (x, y)    

def verifica_tabuleiro():
  faltam = 0
  for i in range(4):
    for j in range(4):
      if apostas[i][j] == "🟥":
        faltam += 1
  return faltam

hora_inicial = time.time()
while True:
  x1, y1 = faz_aposta(1)
  x2, y2 = faz_aposta(2)
  mostra_apostas()

  if apostas[x1][y1] == apostas[x2][y2]:
    print("Parabéns! Acertou")
    pontos += 10
    contador = verifica_tabuleiro()
    if contador == 0:
      print("Que show! Você venceu! 🏆🏆")
      break
    else:
      print(f"Falta(m): {contador//2} bicho(s) para descobrir...")
      time.sleep(2)
  else:
    print("Errou... Tente novamente")
    pontos -= 5
    apostas[x1][y1] = "🟥"
    apostas[x2][y2] = "🟥"
    sair = input("Deseja desistir? (S/N): ").upper()
    if sair == "S":
      break

hora_final = time.time()
duracao = hora_final - hora_final

print("*"*40)
print(f"Jogador: {nome}")
print(f"total de pontos: {pontos} - Tempo: {duracao:.3f} segundos")

# Rotina para salvar os dados no arquivo ranking.txt uwu
dados = []
if os.path.isfile("Ranking.txt"):
  with open("Ranking.txt", "r") as arq:
    dados = arq.readlines()

dados.append(f"{nome};{pontos}:{duracao:.3f}\n")

with open("Ranking.txt", "w") as arq:
  for dado in dados:
    arq.write(dado+"\n")


nomes = []
pontuacoes = []
tempos = []

for dado in dados:
  partes = dado.split(";")
  nomes.append(partes[0])
  pontuacoes.append(int(partes[1]))
  tempos.append(float(partes[2]))

  print ("Ranking dos jogadores ")
  print ("-"*30)
  print ("\nNome do jogador...............: pontos tempo.. :")
   # coloca as listas em ordem (zipando as 3 listas)
  juntas = sorted(zip(pontuacoes, nomes, tempos), reverse =True)
  pontuacoes2, nomes2, tempos2 = zip(*juntas)
for n, ponto, tempo in zip(nomes, pontuacoes, tempos):
  if n == nome and tempo == duracao:
    print(Fore.RED + f" {n:30}   {ponto:2d}    {tempo:7.3f} seg")
    print(Style.RESET_ALL)
  else:
    print(f"{n:30}   {ponto:2d}    {tempo:7.3f} seg")