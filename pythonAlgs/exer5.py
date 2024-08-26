#5. Elaborar um programa que leia ‘n’ números, até ser digitado 0. Ao final, exiba quantos números
#foram digitados, a soma dos números e qual o maior número digitado.

def processar_numeros():
    numeros = []
    
    while True:
        numero = int(input("Número: "))
        if numero == 0:
            break
        numeros.append(numero)
    
    if numeros:
        total_numeros = len(numeros)
        soma_numeros = sum(numeros)
        maior_numero = max(numeros)
        
        print("-----------------------------")
        print(f"Números digitados: {total_numeros}")
        print(f"Soma dos Números: {soma_numeros}")
        print(f"Maior Número: {maior_numero}")
    else:
        print("Nenhum número foi digitado.")

# Exemplo de uso
processar_numeros()
