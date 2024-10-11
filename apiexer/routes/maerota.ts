import { PrismaClient } from "@prisma/client";
import { Router } from "express";
import { z } from "zod";


const prisma = new PrismaClient();
const router = Router();


const maeSchema = z.object({
nome:  z.string(),
endereco: z.string(),
telefone: z.string(),
birthdate: z.string(),

})



router.get("/", async (req, res) => {
    try {
      const maes = await prisma.maeparto.findMany({
        include: { parto: true },
        
      });
      res.status(200).json(maes);
    } catch (error) {
      res.status(500).json({ erro: error });
    }
  })

  router.post("/", async (req, res) => {

    const valida = maeSchema.safeParse(req.body)
    if (!valida.success) {
      res.status(400).json({ erro: valida.error })
      return
    }
    try {
    const maes = await prisma.maeparto.create({
        data: valida.data
    })
      res.status(201).json(maes)
    } catch (error) {
      res.status(400).json({ error })
    }
  })



  export default router