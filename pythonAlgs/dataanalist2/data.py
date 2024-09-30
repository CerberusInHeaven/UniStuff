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
 moneyanalist.sort(key=lambda y: float(y["finalWorth"]), reverse=True)

 topriquinhos = moneyanalist[:20]

 print("Top 20 riquinhos")
 for rich in topriquinhos:
     print(f"Name: {rich['personName']} || worth: {rich['finalWorth']} || country: {rich['country']}")


def compara2paises():
    

while True: 
    titulo("defenda o seu bilionário de estimação ")
  
    titulo("1, top 20 riquinhos")
    titulo("2, comparar 2 paises")
    titulo("3, agrupar por categoria")
    titulo("4, agrupar por pais")
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