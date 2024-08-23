import { PrismaClient } from '@prisma/client'
import { Router } from 'express'

const router = Router()
const prisma = new PrismaClient()



router.get("/", async(req, res) => {
    const carros = await prisma.carro.findMany()
    res.status(200).json(carros)
})

router.post("/", async(req, res) => {
    const {modelo, ano, preco, marca, cor, combustivel} = req.body
              if (!modelo || !ano || !preco || !marca || !cor || !combustivel)
              {res.status(400).send("Erro... informe modelo, ano, preco, marca, cor e combustivel")
                return
              }
   const carro = await prisma.carro.create({
        data: { modelo, ano, preco, marca, cor, combustivel}
    } 
  )
res.status(201).json(carro); 
})

router.delete("/:id", async(req, res) => {
    const { id } =  req.params
    const carros = await prisma.carro.delete( {where: {id: Number(id)}} 
)
    res.status(200).json(carros)
})

export default router