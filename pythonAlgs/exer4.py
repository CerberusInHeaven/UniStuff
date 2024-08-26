
#4. Digamos que o número de chinchilas de uma fazenda triplica a cada ano, após o primeiro ano.
#Elaborar um programa que leia o número inicial de chinchilas e anos e informe ano a ano o número
#médio previsto de chinchilas da fazenda. O número inicial de chinchilas deve ser maior ou igual a 2
#(um casal).

#variavéis 
numero_inicial = 8
anos = 6

def calcular_chinchilas(numero_inicial, anos):
    if numero_inicial < 2:
        print("O número inicial de chinchilas deve ser maior ou igual a 2.")
        return
    
    # printa o numero de chinchilas por ano
    for ano in range(1, anos + 1):
        if ano == 1:
            chinchilas = numero_inicial
        else:
            chinchilas *= 3
        print(f"{ano}º Ano: {chinchilas} chinchilas")

calcular_chinchilas(numero_inicial, anos)
