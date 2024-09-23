import csv
titanic = []
with open("train.csv", mode="r") as arq:
    dados_csv = csv.DictReader(arq)
    for linha in dados_csv:
        titanic.append(linha)

print(titanic[0])
print(titanic[0]['Name'])


def titulo(texto):
    print()
    print(texto)
    print("="*40)

def analise_sexo():
    titulo("Analise por sexo")
    masc = 0
    fem = 0

    for pessoa in titanic:
        if pessoa["Sex"] == "male":
            masc += 1
        elif pessoa["Sex"] == "female":
            fem += 1

    #------- outra forma(list comprehension)
    masc_sobre = len([x for x in titanic
                  if x['Sex'] == "male" and x['Survived'] == '1'])
    
    fem_sobre = len([x for x in titanic
                  if x['Sex'] == "female" and x['Survived'] == '1'])
    
    print(f"Homens -.-''' : {masc}")
    print(f"sobreviventes : {masc_sobre}")
    print(f"mortos : {masc-masc_sobre}")
    
    print("========")
    print(f"Mulheres uwu: {fem}")
    print(f"sobreviventes {fem_sobre}")
    print(f"Mortas: {fem-fem_sobre}")

def top10_idosos():
    pass

def analise_classe():
    pass

while True: 
    titulo("Passageiros do titanic: Exemplos de analise")
    titulo("1, Análise por sexo")
    titulo("2, top 10 mais idosos")
    titulo("3, Análise por classe")
    titulo("4, finalizar")
    opcao = int(input("Opção: "))
    if opcao == 1:
        analise_sexo()
    elif opcao == 2:
        top10_idosos()
    elif opcao == 3:
        analise_classe()
    else:
        break