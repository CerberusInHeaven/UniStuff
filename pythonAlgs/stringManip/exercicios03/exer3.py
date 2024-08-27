#3. Elaborar um programa que leia uma palavra. Exiba a letra inicial (e suas ocorrências) e "_" nas demais
#posições, conforme o exemplo.

palavra = input("Digita uma palavra: ")

inicial = palavra[0].upper()

resultado = ""

for letra in palavra:
  if letra.upper() == inicial:
        resultado += inicial + " "
  else:
    resultado += "_ "

print(f"Descubra: {resultado.strip()}")




