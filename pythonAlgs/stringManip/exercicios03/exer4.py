#4. Uma palavra é dita palíndrome quando pode ser lida nos 2 sentidos. Elabore um programa que leia
#uma palavra e informe se ela é ou não palíndrome.


palavra = input("Sua palavra aqui: ").strip().lower()

if palavra == palavra[::-1]:
    print(f"{palavra} é um palindromo")

else:
    print(f"{palavra} Não é um palindromo")
