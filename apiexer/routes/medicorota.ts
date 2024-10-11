import { PrismaClient } from "@prisma/client";
import { Router } from "express";
import { z } from "zod";


const prisma = new PrismaClient();
const router = Router();


const medicoSchema = z.object({
nome:  z.string(),
telefone: z.string(),
crm: z.number(),
especialidade: z.string(),

})


router.get("/", async (req, res) => {
    try {
      const medicos = await prisma.medico.findMany({
        include: { parto: true },
        
      });
      res.status(200).json(medicos);
    } catch (error) {
      res.status(500).json({ erro: error });
    }
  });


  router.post("/", async (req, res) => {

    const valida = medicoSchema.safeParse(req.body)
    if (!valida.success) {
      res.status(400).json({ erro: valida.error })
      return
    }
    try {
    const medicos = await prisma.medico.create({
        data: valida.data
    })
      res.status(201).json(medicos)
    } catch (error) {
      res.status(400).json({ error })
    }
  })




  export default router