# Listas para armazenar as descrições e os valores das contas
descricoes = []
valores = []

def incluir_conta():
    descricao = input("Digite a descrição da conta: ")
    valor = float(input("Digite o valor da conta: "))
    descricoes.append(descricao)
    valores.append(valor)
    print("Conta adicionada com sucesso!")

def listar_contas():
    if not descricoes:
        print("Nenhuma conta cadastrada.")
    else:
        print("\nLista de Contas:")
        for i in range(len(descricoes)):
            print(f"{i + 1}. {descricoes[i]} - R$ {valores[i]:.2f}")
        print()

def listar_contas_ordenadas():
    if not descricoes:
        print("Nenhuma conta cadastrada.")
    else:
        contas = list(zip(descricoes, valores))  # Cria uma lista de tuplas (descrição, valor)
        contas_ordenadas = sorted(contas, key=lambda x: x[0].lower())  # Ordena pela descrição
        print("\nContas em Ordem Alfabética:")
        for i, (desc, val) in enumerate(contas_ordenadas, 1):
            print(f"{i}. {desc} - R$ {val:.2f}")
        print()

def pesquisar_conta():
    pesquisa = input("Digite a descrição da conta para pesquisar: ")
    if pesquisa in descricoes:
        index = descricoes.index(pesquisa)
        print(f"Conta encontrada: {descricoes[index]} - R$ {valores[index]:.2f}")
    else:
        print("Conta não encontrada.")

def excluir_conta():
    pesquisa = input("Digite a descrição da conta para excluir: ")
    if pesquisa in descricoes:
        index = descricoes.index(pesquisa)
        descricoes.pop(index)
        valores.pop(index)
        print("Conta excluída com sucesso!")
    else:
        print("Conta não encontrada.")

def menu():
    while True:
        print("\nMenu:")
        print("1. Incluir Conta")
        print("2. Listar Contas")
        print("3. Listar Contas em Ordem")
        print("4. Pesquisar Conta")
        print("5. Excluir Conta")
        print("6. Finalizar")
        opcao = input("Escolha uma opção: ")

        if opcao == '1':
            incluir_conta()
        elif opcao == '2':
            listar_contas()
        elif opcao == '3':
            listar_contas_ordenadas()
        elif opcao == '4':
            pesquisar_conta()
        elif opcao == '5':
            excluir_conta()
        elif opcao == '6':
            print("Encerrando o programa...")
            break
        else:
            print("Opção inválida! Tente novamente.")

# Executa o menu
menu()
