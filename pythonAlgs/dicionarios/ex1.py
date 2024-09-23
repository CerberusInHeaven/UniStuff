# exemplo 1-1-2-2-2

clientes = [ 
    {"nome": "dracula flow", "idade":   60},
    {"nome": "paulo kogos", "idade":    31},
    {"nome": "rafael moreira", "idade":  40},
    {"nome": "loli vampira", "idade":  10},
    {"nome": "young thug", "idade":      18},
    {"nome": "blue archive da silva", "idade":      16}
]


#can add itens with append

clientes.append ({"nome": "devil jin da silva", "idade": 6666})

print(clientes[0])


#exibir apenas um atributo do elemento

print(clientes[0]['nome'])


#correndo a lista

#for cliente, in clientes:
 #   print(cliente['nome'])


#enumerando  lista
for contador, cliente  in enumerate(clientes, start=1):
    print(f"{contador}ª cliente: {cliente['nome']}")
print('\n')



#classificando itens
#lambda = maneira de declaração função anonima in python 
#equivale a arrow function () => [] do javascript 

clientes2 = sorted(clientes, key=lambda cliente: cliente['nome'])


#listar dado.
for contador, cliente in enumerate(clientes2, start=1):
    print(f"{contador}ª {cliente['nome']} - {cliente['idade']} anos")



#listar dado.
for contador, cliente in enumerate(clientes2, start=1):
    print(f"{contador}ª {cliente['nome']} - {cliente['idade']} anos")
print('\n')


#EX3

clientes3 = sorted(clientes, key=lambda cliente: cliente['idade'],reverse=True)
for contador, cliente in enumerate(clientes3, start=1):
    print(f"{contador}ª {cliente['nome']} - {cliente['idade']} anos")


#filters 
print("="*30)
for contador, cliente in enumerate(clientes3, start=1):
    if cliente['idade'] >= 30:
     print(f"{contador}ª {cliente['nome']} - {cliente['idade']} anos")


# --- filtros com compreensão de lista 

clientes4 = [x for x in clientes if x['idade'] < 30]
print("="*30)

for contador, cliente in enumerate(clientes4, start=1):
 print(f"{contador}ª {cliente['nome']} - {cliente['idade']} anos")
print('\n')


num = len(clientes4)
print(f"{num} clientes menos que 30 uwu")

