import random
import time
import os

jogo = []
apostas = []

temp = "🐢🐢🐇🐇🐋🐋🐠🐠🐪🐪🐘🐘🐼🐼🐒🐒"
figuras = list(temp)

def preenche_matriz():
    for i in range(4):
      jogo.append([])
      apostas.append([])
      for _ in range(4):
         num = random.randint(0, len(figuras)-1)
         jogo[i].append(figuras[num])
         apostas[i].append("🔶")
         figuras.pop(num)

def mostra_tabuleiro():
   os.system("cls")
   print ("   1   2   3   4")
   for i in range(4):
      print(f"{i+1}", end="")
      for j in range(4):
         print(f" {jogo[i][j]} ", end="")
      print("\n")
   
   print("\nMemorize a posição dos bichos ...")
   time.sleep(2)

   print("Contagem Regressica: ", end="")
   for i in range(10, 0, -1):
      print(i, end=" ", flush=True)
      time.sleep(1)

   os.system("cls")

def mostra_apostas():
   os.system("cls")
   print ("   1   2   3   4")
   for i in range(4):
      print(f"{i+1}", end="")
      for j in range(4):
         print(f" {apostas[i][j]} ", end="")
      print("\n")

preenche_matriz()
mostra_tabuleiro()
mostra_apostas()

def faz_aposta(num):
   while True:
      mostra_apostas()
      aposta = input (f"{num}° Coordenada (2 Números: linha e coluna): ")
      if len(aposta) != 2:
         print("Informe uma dezena, por exemplo, 12, 24, 31...")
         time.sleep(2)
         continue
      x = int(aposta[0])-1
      y = int(aposta[1])-1
      try:
         if apostas[x][y] == "🔶":
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
         if apostas[i][j] == "🔶":
            faltam += 1
   return faltam

while True:
    x1, y1 = faz_aposta(1)
    x2, y2 = faz_aposta(2)
    mostra_apostas()
   
    if apostas[x1][y1] == apostas[x2][y2]:
       print("Parabéns! Acertou")
       contador = verifica_tabuleiro()
       if contador == 0:
          print("Que show! Você venceu! 🏆🏆")
          break
       else:
         print(f"Falta(m): {contador/2} bichos para descobrir...")
    else:
       print("Errou... Tente novamente")
       apostas[x1][y1] = "🔶"
       apostas[x2][y2] = "🔶"
       sair = input("Deseja desistir? (S/N): ").upper()

