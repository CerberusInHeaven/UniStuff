import { PrismaClient } from "@prisma/client";
import { Router } from "express";
import { z } from "zod";


    const prisma = new PrismaClient();
    const router = Router();


    const bebeSchema = z.object({
    nome:  z.string(),
    peso: z.number(),
    data: z.string(),
    maeinfo: z.number(),
    medicoinfo: z.number()
    })

    router.get("/", async (req, res) => {
        try {
        const bebes = await prisma.bebe.findMany({
            include:{ mae:true,
                    parteiro: true
            }
        })
        res.status(200).json(bebes)
        } catch (error) {
        res.status(500).json({erro: error})
        }
    })


    router.post("/", async (req, res) => {

        const valida = bebeSchema.safeParse(req.body)
        if (!valida.success) {
          res.status(400).json({ erro: valida.error })
          return
        }
        try {
        const bebes = await prisma.bebe.create({
            data: valida.data
        })
          res.status(201).json(bebes)
        } catch (error) {
          res.status(400).json({ error })
        }
      })



      export default router