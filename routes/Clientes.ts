import { Cliente } from './../node_modules/.prisma/client/index.d';



import { PrismaClient } from '@prisma/client'
import { Router } from 'express'
import { z } from 'zod'
const prisma = new PrismaClient()


const router = Router()

const ClienteSchema = z.object({
    nome: z.string().min(10,
    { message: "Nome deve possuir, no mínimo, 10 caracteres" }),
    email: z.string().min(1, {message: "TEM QUE TER UM EMAIL MANO, CACETADA BIXO"}),
    cidade: z.string().min(1, {message: "TU É UM SOLDADO DOS DIAMOND DOGS PRA NÃO TER PAIS OWW MONGOLÃO ? "}),
    idade: z.number().min(16,
    {message: "Idade deve ser igual ou maior que 16 anos"}
  ),
 
  })

router.get("/", async (req, res) => {
  try {
    const Candidata = await prisma.candidata.findMany()
    res.status(200).json(Candidata)
  } catch (error) {
    res.status(500).json({ erro: error })
  }
})

router.post("/", async (req, res) => {

  const valida = ClienteSchema.safeParse(req.body)
  if (!valida.success) {
    res.status(400).json({ erro: valida.error })
    return
  }

  try {
    const Cliente = await prisma.cliente.create({
      data: valida.data })
    res.status(200).json(Cliente)
  } catch (error) {
    res.status(400).json({ error })
  }
})

router.delete("/:id", async (req, res) => {
  const { id } = req.params

  try {
    const Cliente = await prisma.cliente.delete({
      where: { id: Number(id) }
    })
    res.status(200).json(Cliente)
  } catch (error) {
    res.status(400).json({ erro: error })
  }
})

router.put("/:id", async (req, res) => {
  const { id } = req.params

  const valida = ClienteSchema.safeParse(req.body)
  if (!valida.success) {
    res.status(400).json({ erro: valida.error })
    return
  }

  try {
    const cliente = await prisma.cliente.update({
      where: { id: Number(id) },
      data: valida.data})
    res.status(200).json(cliente)
  } catch (error) {
    res.status(400).json({ error })
  }
})

export default router
