
# Variavéis iniciais 
num_pessoas = 4
num_peixes = 5

def calcular_valor_pagar(num_pessoas, num_peixes):
    valor_entrada_por_pessoa = 20.00
    valor_peixe_extra = 12.00
    
    #Cálculo do valor de entrada
    valor_entrada_total = num_pessoas * valor_entrada_por_pessoa
    
    #Cálculo do número de peixes extras
    peixes_extras = max(0, num_peixes - num_pessoas)
    
    #Cálculo valor a pagar pelos peixinhos extras uwu
    valor_peixes_extras = peixes_extras * valor_peixe_extra
    
    #total
    valor_total = valor_entrada_total + valor_peixes_extras
    
    return valor_total


valor_a_pagar = calcular_valor_pagar(num_pessoas, num_peixes)
print(f"Nº Pessoas: {num_pessoas}")
print(f"Nº Peixes: {num_peixes}")
print(f"Pagar R$: {valor_a_pagar:.2f}")
