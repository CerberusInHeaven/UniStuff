import { Combustivel, PrismaClient } from '@prisma/client'
import { Router } from 'express'
import { z } from 'zod'

const prisma = new PrismaClient()
const router = Router()

const carroSchema = z.object({
  modelo: z.string(),
  marca: z.string().min(3,
    { message: "Marca deve ter, no mínimo, 3 caracteres" }),
  ano: z.number().min(1980,
    { message: "Ano deve ser superior ou igual a 1980" }),
  preco: z.number().positive(
    { message: "Preço não pode ser negativo" }),
  cor: z.string().optional(),
  combustivel: z.nativeEnum(Combustivel).optional(),
  km: z.number().optional()
})

router.get("/", async (req, res) => {
  try {
    const carros = await prisma.carro.findMany({
      orderBy: { id: 'desc' },
      select: {
        id: true,
        modelo: true,
        ano: true,
        preco: true
      }
    })
    res.status(200).json(carros)
  } catch (error) {
    res.status(500).json({erro: error})
  }
})

router.post("/", async (req, res) => {

  const valida = carroSchema.safeParse(req.body)
  if (!valida.success) {
    res.status(400).json({ erro: valida.error })
    return
  }

  try {
    const carro = await prisma.carro.create({
      data: valida.data
    })
    res.status(201).json(carro)
  } catch (error) {
    res.status(400).json({ error })
  }
})


##request post 

POST http://localhost:3000/
Content-Type: application/json

{
  "modelo": "Civic",
  "marca": "Honda",
  "ano": 2020,
  "preco": 95000,
  "cor": "Preto",
  "combustivel": "GASOLINA",
  "km": 20000
}


router.delete("/:id", async (req, res) => {
  const { id } = req.params

  try {
    const carro = await prisma.carro.delete({
      where: { id: Number(id) }
    })
    res.status(200).json(carro)
  } catch (error) {
    res.status(400).json({ erro: error })
  }
})


##delete info 
DELETE http://localhost:3000/1


router.put("/:id", async (req, res) => {
  const { id } = req.params

  const valida = carroSchema.safeParse(req.body)
  if (!valida.success) {
    res.status(400).json({ erro: valida.error })
    return
  }

  try {
    const carro = await prisma.carro.update({
      where: { id: Number(id) },
      data: valida.data
    })
    res.status(201).json(carro)
  } catch (error) {
    res.status(400).json({ error })
  }
})

##atualização geral put

PUT http://localhost:3000/1
Content-Type: application/json

{
  "modelo": "Corolla",
  "marca": "Toyota",
  "ano": 2019,
  "preco": 88000,
  "cor": "Branco",
  "combustivel": "FLEX",
  "km": 35000
}


// quando quisermos alterar apenas algum/alguns atributo(s)
router.patch("/:id", async (req, res) => {
  const { id } = req.params

  const partialCarroSchema = carroSchema.partial()

  const valida = partialCarroSchema.safeParse(req.body)
  if (!valida.success) {
    res.status(400).json({ erro: valida.error })
    return
  }

  try {
    const carro = await prisma.carro.update({
      where: { id: Number(id) },
      data: valida.data
    })
    res.status(201).json(carro)
  } catch (error) {
    res.status(400).json({ error })
  }
})
#exemplo de patch 

PATCH http://localhost:3000/1
Content-Type: application/json

{
  "preco": 87000
}


router.get("/pesquisa/:modelo", async (req, res) => {
  const { modelo } = req.params
  try {
    const carros = await prisma.carro.findMany({
      where: { modelo: { contains: modelo } }
    })
    res.status(200).json(carros)
  } catch (error) {
    res.status(500).json({ erro: error })
  }
})


#buscar por modelo 
GET http://localhost:3000/pesquisa/Civic





##Exemplo de select
router.get("/pesquisa/:modelo", async (req, res) => {
  const { modelo } = req.params
  try {
    const carros = await prisma.carro.findMany({
      where: { modelo: { contains: modelo } },
      select: {
        modelo: true,
        preco: true
      }
    })
    res.status(200).json(carros)
  } catch (error) {
    res.status(500).json({ erro: error })
  }
})
export default router
