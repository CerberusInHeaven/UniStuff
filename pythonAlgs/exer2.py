#2. Um número é dito perfeito, quando é igual a soma dos seus divisores 
#(exceto com o próprio número). Ler um número, exibir os seus divisores e informar se ele é ou não perfeito.

#variaveis
numero = 28

#funções são engraçadas e bem utéis tho

def verificar_numero_perfeito(numero):
    divisores = [i for i in range(1, numero) if numero % i == 0]
    return divisores, sum(divisores) == numero


#Variaveis que saem da função e se transformam nas informações de divisores e se o numero é perfeito ou não
divisores, perfeito = verificar_numero_perfeito(numero)

print(f"Divisores do {numero}: {', '.join(map(str, divisores))}")
print(f"Soma dos divisores: {sum(divisores)}")
print(f"{numero} é {'um número perfeito' if perfeito else 'não é um número perfeito'}")
