import { PrismaClient } from "@prisma/client";
import { Router } from "express";
import { z } from "zod";

const prisma = new PrismaClient();
const router = Router();

const vinhoSchema = z.object({
  tipo: z.string(),
  preco: z.number().min(1, { message: "No mínimo, 1 real..." }),
  quant: z.number(),
  teor: z.number(),
  ano: z.number().min(1950, { message: "Ano deve ser superior a 1950" }),
  marcaId: z.number(),
});

router.get("/", async (req, res) => {
  try {
    const vinhos = await prisma.vinho.findMany({
      include: { marca: true },
    });
    res.status(200).json(vinhos);
  } catch (error) {
    res.status(500).json({ erro: error });
  }
});

router.post("/", async (req, res) => {
  const valida = vinhoSchema.safeParse(req.body);
  if (!valida.success) {
    res.status(400).json({ erro: valida.error });
    return;
  }

  try {
    const vinho = await prisma.vinho.create({
      data: valida.data,
    });
    res.status(201).json(vinho);
  } catch (error) {
    res.status(400).json({ error });
  }
});

router.delete("/:id", async (req, res) => {
  const { id } = req.params;

  try {
    const vinho = await prisma.vinho.delete({
      where: { id: Number(id) },
    });
    res.status(200).json(vinho);
  } catch (error) {
    res.status(400).json({ erro: error });
  }
});

router.put("/:id", async (req, res) => {
  const { id } = req.params;

  const valida = vinhoSchema.safeParse(req.body);
  if (!valida.success) {
    res.status(400).json({ erro: valida.error });
    return;
  }

  try {
    const vinho = await prisma.vinho.update({
      where: { id: Number(id) },
      data: valida.data,
    });
    res.status(201).json(vinho);
  } catch (error) {
    res.status(400).json({ error });
  }
});

// quando quisermos alterar apenas algum/alguns atributo(s)
router.patch("/:id", async (req, res) => {
  const { id } = req.params;

  const partialVinhoSchema = vinhoSchema.partial();

  const valida = partialVinhoSchema.safeParse(req.body);
  if (!valida.success) {
    res.status(400).json({ erro: valida.error });
    return;
  }

  try {
    const vinho = await prisma.vinho.update({
      where: { id: Number(id) },
      data: valida.data,
    });
    res.status(201).json(vinho);
  } catch (error) {
    res.status(400).json({ error });
  }
});

router.get("/pesquisa/:tipo", async (req, res) => {
  const { tipo } = req.params;
  try {
    const vinho = await prisma.vinho.findMany({
      where: { tipo: { contains: tipo } },
    });
    res.status(200).json(vinho);
  } catch (error) {
    res.status(500).json({ erro: error });
  }
});

export default router;
