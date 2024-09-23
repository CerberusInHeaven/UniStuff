import csv
titanic = []
with open("train.csv", mode="r") as arq:
    dados_csv = csv.DictReader(arq)
    for linha in dados_csv:
        titanic.append(linha)

print(titanic[0])
print(titanic[0]['Name'])