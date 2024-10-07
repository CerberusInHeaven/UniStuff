import csv 

riquinhos = []
with open("riquinhos.csv", mode="r") as arq:
    info_csv = csv.DictReader(arq)
    for line in info_csv:
        riquinhos.append(line)



def titulo(texto):
    print()
    print(texto)
    print("="*40)

def top20():
 moneyanalist = [m for m in riquinhos if m["finalWorth"] != '' and m["finalWorth"] is not None]
 moneyanalist.sort(key=lambda y: int(y["finalWorth"]), reverse=True)

 topriquinhos = moneyanalist[:20]

 print("Top 20 riquinhos")
 for rich in topriquinhos:
     print(f"Name: {rich['personName']} || worth: {rich['finalWorth']} || country: {rich['country']}")


def compara2paises():
    pais1 = input("1º País: ").upper()
    pais2 = input("2º País: ").upper()

    print(f"\nBilionários: {pais1}")
    print("-"*40)

    num1 = 0
    for bil in riquinhos:
      if bil['country'].upper() == pais1:
        print(bil['personName'])
        num1 += 1

    print(f"\nBilionários: {pais2}")
    print("-"*40)

    num2 = 0
    for bil in riquinhos:
      if bil['country'].upper() == pais2:
        print(bil['personName'])
        num2 += 1

    print(f"\nTotal {pais1}: {num1}")
    print(f"Total {pais2}: {num2}")

def agruparpaises():
    compara = list(set([x['country']for x in riquinhos]))
    numlista = [0] * len(compara)

    for y in riquinhos:
        indice = compara.index(y['country'])
        numlista[indice] += 1

    grupo = sorted(zip(numlista, compara), reverse=True)
    num2, compara2 = zip(*grupo)

    print("\n VTNC LULA123............ uwu ainn bolsonaro paraaa Nº: ")
    for comp, numb in zip(compara2, num2):
        print(f"{comp:35} {numb:8d}")

def porcategoria():
    compara = list(set([x['category']for x in riquinhos]))
    numlista = [0] * len(compara)

    for y in riquinhos:
        indice = compara.index(y['category'])
        numlista[indice] += 1

    grupo = sorted(zip(numlista, compara), reverse=True)
    num2, compara2 = zip(*grupo)

    print("\n VTNC LULA123............ uwu ainn bolsonaro paraaa Nº: ")
    for comp, numb in zip(compara2, num2):
        print(f"{comp:35} {numb:8d}")


while True: 
    titulo("defenda o seu bilionário de estimação ")
  
    titulo("1, top 20 riquinhos")
    titulo("2, comparar 2 paises")
    titulo("3, agrupar por categoria")
    titulo("4, agrupar por pais")
    titulo("5, faz o computador explodir e se peidar ")
    opcao = int(input("Opção: "))
    if opcao == 1:
        top20()
    elif opcao == 2:
        compara2paises()
    elif opcao == 3:
        porcategoria()
    elif opcao == 4:
        agruparpaises()
    else:
        break