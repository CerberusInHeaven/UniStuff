import csv 

formulawin = []
with open("winners.csv", mode="r") as arq:
    info_csv = csv.DictReader(arq)
    for line in info_csv:
        formulawin.append(line)


def titulo(texto):
    print()
    print(texto)
    print("="*40)


def top10():
 raceranalist = [m for m in formulawin if m["Winner"] != '' and m["Winner"] is not None]
 raceranalist.sort(key=lambda y: (y["Winner"]), reverse=True)

 topformulawin = raceranalist[:10]

 print("Top 20 riquinhos")
 for racer in topformulawin:
     print(f"Name: {racer['Winner']} ")

def novos():
    pass

def remanescentes():
    pass

def pesquisa():
    team = input("1º País: ").upper()
    

    print(f"\nTime Pesquisado: {team}")
    print("-"*40)

    num1 = 0
    for bil in riquinhos:
      if bil['country'].upper() == pais1:
        print(bil['personName'])
        num1 += 1

    print(f"\nBilionários: {pais2}")
    print("-"*40)





while True: 
    titulo("F1 placeholder ")
  
    titulo("1, top 10 pilotos ")
    titulo("2, novos vencedores nos ultimos 3 anos")
    titulo("3, Vencedores remanescentes dos ultimos 3 anos")
    titulo("4, Pesquisar equipes")
    titulo("5, finalizar ")
    opcao = int(input("Opção: "))
    if opcao == 1:
        top10()
    elif opcao == 2:
        novos()
    elif opcao == 3:
        remanescentes()
    elif opcao == 4:
        pesquisa()
    else:
        break
 