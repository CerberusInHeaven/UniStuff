import time
import random

nome = input("Nome do kaijifag: ")
valor = float(input("Valor de buy-in: "))

input("Pressione Enter para jogar... zawa ~ zawa ~ zawa ~ zawa..")

figuras = "🍅🦁🧝"
jogo = ""

print("Mirai wa bokura no te no naka", end="")

for _ in range(3):
    num = random.randint(0, 2)
    print(figuras[num], end=" ", flush=True,) 
    time.sleep(2)
    jogo = jogo + figuras[num]
if jogo[0] == jogo[1] and jogo[0] == jogo[2]:
    print(f"Parabéns{nome}, você ganhou {valor*10:.2f} e não ira para as minas de carvão...")

elif jogo[0] == jogo[1] or jogo[0] == jogo[2] or jogo[1] == jogo[2]:
    print("\nTente denovo... Zawa... zawa... zawa.. zawa.... !")
else:
    print("\nNANTO KANAREEEEEEEEEEEEEEEEEEEEEEEEE")