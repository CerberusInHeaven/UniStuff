
# 3. Elaborar um programa que leia o nome de um produto e o número de etiquetas a serem
# impressas desse produto. Exiba as etiquetas com o nome do produto, com no máximo 2 etiquetas
# por linha, conforme exemplo de execução do programa, demonstrado a seguir.


# váriaveis
nome_produto = "Suco Natural de Uva"
num_etiquetas = 7

def imprimir_etiquetas(nome_produto, num_etiquetas):
    etiquetas_por_linha = 2
    print(f"Produto: {nome_produto}\n")
    
    # Loop para imprimir as etiquetas
    for i in range(num_etiquetas):
        # da uma olhadinha se é o primeiro nome da lista ou segundo nome da lista
        if (i + 1) % etiquetas_por_linha == 0 or i == num_etiquetas - 1:
            print(nome_produto)
        else:
            print(nome_produto, end="\t")
            


imprimir_etiquetas(nome_produto, num_etiquetas)
