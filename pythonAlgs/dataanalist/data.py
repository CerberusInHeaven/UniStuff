import csv
titanic = []
with open("train.csv", mode="r") as arq:
    dados_csv = csv.DictReader(arq)
    for linha in dados_csv:
        titanic.append(linha)

##print(titanic[0])
##print(titanic[0]['Name'])


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
 idadeanalist = [pessoa for pessoa in titanic if pessoa["Age"] != '' and pessoa["Age"] is not None]
 idadeanalist.sort(key=lambda y: float(y["Age"]), reverse=True)

 topvelhos = idadeanalist[:10]

 print("Top 10 idosos")
 for pessoa in topvelhos:
     print(f"Nome: {pessoa['Name']} || idade: {pessoa['Age']} || classe: {pessoa['Pclass']} || Survived : {'Sim' if pessoa['Survived'] == '1' else 'Não'}")
     
        
def analise_classe():
     
    classA = 0
    classB = 0 
    classC = 0 
    
    for cl in titanic:
     if cl["Pclass"] == "1":
         classA += 1
     elif cl["Pclass"] == "2":
         classB += 1
     else:
         classC += 1
    print("*Analise de passageiros por classe*")
    print(f"Numero de passageiros da class A: {classA}")
    print(f"Numero de passageiros da class B: {classB}")
    print(f"Numero de passageiros da class C: {classC}")
    print("="*30)

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