#2. Elaborar um programa que leia o nome completo de um aluno. Valide o nome para que seja composto.
#Exiba apenas o primeiro nome do aluno em letras maiúsculas. 

nome_aluno = input("Nome do aluno: ")
cracha = nome_aluno.split(" ")

if len(cracha) <2:
    print("Ops... Por favor, digite o nome completo")
else:
   print(f"\nNome completo: {nome_aluno}")
   print(f"Nome do crachá: {cracha[0].upper()}")



