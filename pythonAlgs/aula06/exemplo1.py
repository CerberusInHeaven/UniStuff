

print("/////////////////////\n")

#list comprehension
cidades = ["pelotas", "paulinia", "cascavel"]

cidades2 = [x.upper() for x in cidades]

print(f'{cidades2}\n')

cidades3 = []
for c in cidades:
    cidades3.append(c.upper())

print('uwu\n')

numeros = [13, 20, 45, 50, 72, 10]
print(f"{numeros}\n numeros base \n ")
# usando list comprehension criar uma nova lista com o dobro dos numeros uwu wawa  
dobros = [n*2 for n in numeros]
print(dobros)

# usando list comprehension criar uma nova lista com os pares dos numeros uwu wawa  
pares = [n for n in numeros if n % 2 == 0]
print (pares)

# usando list comprehension criar uma nova lista com os impares  dos numeros uwu wawa  
impares = [n for n in numeros if n % 2 == 1]
print(impares)


