import random
from random import randrange
import time

baralho = []

extras = "JOKR"
naipes = "♠️♦️♥️♣️"

def build_deck():

    for i in range(2, 11):
        for naipe in naipes:
            baralho.append(str(i)+naipe)

for extra in extras:
        for naipe in naipes:
            baralho.append(extra+naipe)


#call function
build_deck()
print(baralho)

pontos_jogador = 0 
pontos_pc      = 0 

def point_check(carta):
   
 if len(carta) == 3:
     num == 10
 elif carta[0].isdigit():
     num = int(carta[0])
 elif carta == "A" :
     num == 11
 else:
     num = 10
 return  num

contador = 0 

while True:
     num = random.randint(0, len(baralho)-1) 
     carta = baralho.pop(num)
     
     contador +=1
     print(f'sua {contador} carta é: {carta}')
     time.sleep(2)
     
     pontos_jogador += point_check(carta)

     if pontos_jogador > 21:
         print('Zawa.... zawa....')
         break
     else:
            contador = 0 

            while True:
                num = random.randint(0, len(baralho)-1) 
                carta = baralho.pop(num)
                
                contador +=1
                print(f'A {contador} carta do computador é: {carta}')
                time.sleep(2)
                
                pontos_pc += point_check(carta)
                print("*"*40)
                if pontos_jogador > 21 or pontos_pc >= pontos_jogador:
                  
                  if pontos_pc >21:
                      print('Você venceu')
                      break
                  elif pontos_pc == pontos_jogador:
                      print('xiii deu empate paeeee')
                      break
                  else:
                      print('teste')
                      break

                if contador >= 2:
                    outra = input('BORA GAMBARRR  ?????? HEINNN BORAAAAA ?????? (S/N)' ).upper()
                    if outra == "N":
                        break
         
print("="*40)
print(f'Total de pontos do jogador = {pontos_jogador}')
print("="*40)

if pontos_jogador > 21:
   print('HAHAHAHA PERDEU TUDO')
         
  

