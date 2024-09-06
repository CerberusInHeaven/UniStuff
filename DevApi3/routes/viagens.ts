import { transportetipo, PrismaClient } from "@prisma/client";
import { Router } from "express";
import { z } from "zod";

const router = Router();

const prisma = new PrismaClient();

const viagens_Schema = z.object({
  destino: z.string(),
  transporte: z.nativeEnum(transportetipo).optional(),
  dataSaida: z.date(),
  preco: z.number(),
  duracao: z.number(),
  
});

router.get("/", async (req, res) => {
  const viagen = await prisma.viagens.findMany({});
  res.status(200).json(viagen);
});

router.post("/", async (req, res) => {
  const result = viagens_Schema.safeParse(req.body);
  console.log(result);

  if (!result.success) {
    res.status(400).json({ error: result.error });
    return;
  }

  const viagen = await prisma.viagens.create({
    data: result.data,
  });
  res.status(201).json(viagen);
});

router.delete("/:id", async (req, res) => {
  const { id } = req.params;

  const viagen = await prisma.viagens.delete({
    where: { id: Number(id) },
  });
  res.status(200).json(viagen);
});

router.put("/:id", async (req, res) => {
  const { id } = req.params;

  const result = viagens_Schema.safeParse(req.body);
  if (!result.success) {
    res.status(400).json({ error: result.error });
    return;
  }

  const viagen = await prisma.viagens.update({
    where: { id: Number(id) },
    data: result.data,
  });
  res.status(200).json(viagen);
});

router.get("/pesquisa/:viagens", async (req, res) => {
  const { viagens } = req.params;

  const viagen = await prisma.viagens.findMany({
    orderBy: { id: "desc" },
    where: { destino: { contains: viagens } },
  });
  res.status(200).json(viagens);
});

export default router;