import { Combustiveis, PrismaClient } from '@prisma/client'
import { Router } from "express"
import { z } from "zod"

const prisma = new PrismaClient()
const router = Router()

const carroSchema = z.object({
  modelo: z.string(),
  marca: z.string(),
  preco: z.number(),
  ano: z.number().min(1980,
    { message: 'No mínimo, ano deve ser 1980' }),
  cor: z.string().optional(),
  combustivel: z.nativeEnum(Combustiveis).optional(),
  km: z.number().optional()
})

router.get("/", async (req, res) => {
  const carros = await prisma.carro.findMany({
    orderBy: { id: 'desc' }
  })
  res.status(200).json(carros)
})

router.post("/", async (req, res) => {

  const result = carroSchema.safeParse(req.body)

  if (!result.success) {
    res.status(400).json({ erro: result.error })
    return
  }

  const carro = await prisma.carro.create({
    data: result.data
  })
  res.status(201).json(carro)
})

router.delete("/:id", async (req, res) => {
  const { id } = req.params

  const carro = await prisma.carro.delete({
    where: { id: Number(id) }
  })
  res.status(200).json(carro)
})

router.put("/:id", async (req, res) => {
  const { id } = req.params

  const result = carroSchema.safeParse(req.body)

  if (!result.success) {
    res.status(400).json({ erro: result.error })
    return
  }

  const carro = await prisma.carro.update({
    where: { id: Number(id) },
    data: result.data
  })
  res.status(200).json(carro)
})

router.patch("/:id", async (req, res) => {
  const { id } = req.params

  const partialCarroSchema = carroSchema.partial()

  const result = partialCarroSchema.safeParse(req.body)

  if (!result.success) {
    res.status(400).json({ erro: result.error })
    return
  }

  const carro = await prisma.carro.update({
    where: { id: Number(id) },
    data: result.data
  })
  res.status(200).json(carro)
})

router.get("/pesquisa/:modelo", async (req, res) => {
  const { modelo } = req.params

  const carros = await prisma.carro.findMany({
    orderBy: { id: 'asc' },
    where: { modelo: { contains: modelo } },
    select: {
      modelo: true,
      preco: true,
      combustivel: true,
      id: true,
    },
  })
  res.status(200).json(carros)
})

export default router