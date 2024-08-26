#5. Elaborar um programa que leia ‘n’ números, até ser digitado 0. Ao final, exiba quantos números
#foram digitados, a soma dos números e qual o maior número digitado.

def processar_numeros():
    numeros = []
    
    #Metodo de repetição de input de numeros 
    
    while True:
        numero = int(input("Número: "))
        if numero == 0:
            break
        numeros.append(numero)
    #Variavéis o numero total, soma de todos os numeros e maior numero
    
    if numeros:
        total_numeros = len(numeros)
        soma_numeros = sum(numeros)
        maior_numero = max(numeros)
    #print das variavéis    
        print("-----------------------------")
        print(f"Números digitados: {total_numeros}")
        print(f"Soma dos Números: {soma_numeros}")
        print(f"Maior Número: {maior_numero}")
    else:
    #Caso nenhum numero seja inputado
        print("Nenhum número foi digitado.")

processar_numeros()
