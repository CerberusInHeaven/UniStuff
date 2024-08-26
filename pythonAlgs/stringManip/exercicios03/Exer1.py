#1. Elaborar um programa que leia uma senha e informe se ela é válida ou não. Para ser válida a senha
#deve conter letras maiúsculas, minúsculas e números. Além disso, a senha deve possuir entre 8 e 12
#caracteres.

senha = "Senha1.."

senha_try = input("Digite a senha do sistema")

if senha.find(senha_try) >=0:
    print("letra certa")
else:
    print("Letra não achada")