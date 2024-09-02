#1. Elaborar um programa que leia uma senha e informe se ela é válida ou não. Para ser válida a senha
#deve conter letras maiúsculas, minúsculas e números. Além disso, a senha deve possuir entre 8 e 12
#caracteres.

import time


senha = input("Sua senha: ")


def validar_senha(senha):
    if len(senha) <8 or len(senha) >12:
     return False 
    
    possui_upper = False
    possui_lower = False
    possui_number = False
    
    for letra in senha: 
        if letra.isupper():
            possui_upper = True
        if letra.islower():
            possui_lower = True
        if letra.isdigit():
            possui_number = True

    return possui_upper and possui_lower and possui_number

print("Checando viabilidade de sua senha...")
time.sleep(3)

if validar_senha(senha):
    print("Senha válida, ta rodando patrão")
   
else:
    print("Senha Invalidade, ela deve possui entre 8 a 12 caracteres e toda essas frescuras de segurança")