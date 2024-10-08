import { PrismaClient } from '@prisma/client'
import { Router } from 'express'
import { z } from 'zod'

const prisma = new PrismaClient()
const router = Router()

const marcaSchema = z.object({
  nome: z.string(),
  cidade: z.string().min(3,
  { message: "Marca deve ter, no mínimo, 3 caracteres" }),
  representante: z.string(),
  fone: z.string().min(8,
  { message: "telefone deve ter, no mínimo, 8 caracteres" }),
  
})

router.get("/", async (req, res) => {
  try {
    const marcas = await prisma.marca.findMany({
      include:{ vinhos:true}
    })
    res.status(200).json(marcas)
  } catch (error) {
    res.status(500).json({erro: error})
  }
})

router.post("/", async (req, res) => {

  const valida = marcaSchema.safeParse(req.body)
  if (!valida.success) {
    res.status(400).json({ erro: valida.error })
    return
  }
  try {
  const marca = await prisma.marca.create({
      data: valida.data
  })
    res.status(201).json(marca)
  } catch (error) {
    res.status(400).json({ error })
  }
})

router.delete("/:id", async (req, res) => {
  const { id } = req.params

  try {
    const carro = await prisma.marca.delete({
      where: { id: Number(id) }
    })
    res.status(200).json(carro)
  } catch (error) {
    res.status(400).json({ erro: error })
  }
})

router.put("/:id", async (req, res) => {
  const { id } = req.params

  const valida = marcaSchema.safeParse(req.body)
  if (!valida.success) {
    res.status(400).json({ erro: valida.error })
    return
  }

  try {
    const carro = await prisma.marca.update({
      where: { id: Number(id) },
      data: valida.data
    })
    res.status(201).json(carro)
  } catch (error) {
    res.status(400).json({ error })
  }
})

// quando quisermos alterar apenas algum/alguns atributo(s)
router.patch("/:id", async (req, res) => {
  const { id } = req.params

  const partialCarroSchema = marcaSchema.partial()

  const valida = partialCarroSchema.safeParse(req.body)
  if (!valida.success) {
    res.status(400).json({ erro: valida.error })
    return
  }

  try {
    const carro = await prisma.marca.update({
      where: { id: Number(id) },
      data: valida.data
    })
    res.status(201).json(carro)
  } catch (error) {
    res.status(400).json({ error })
  }
})


//router.get("/pesquisa/:modelo", async (req, res) => {
 /// const { modelo } = req.params
  //try {
   // const carros = await prisma.marca.findMany({
     // where: { modelo: { contains: modelo } }
    //})
    //res.status(200).json(carros)
  //} catch (error) {
   // res.status(500).json({ erro: error })
 // }
//})

export default router
