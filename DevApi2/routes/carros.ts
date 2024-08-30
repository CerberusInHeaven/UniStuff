import { Combustiveis, PrismaClient } from "@prisma/client";
import { Router } from "express";
import { z } from "zod";

const router = Router();

const prisma = new PrismaClient();

const carro_Schema = z.object({
  modelo: z.string(),
  ano: z.number().min(1980, { message: "No mínimo, ano deve ser 1980" }),
  preco: z.number(),
  marca: z.string(),
  cor: z.string().optional(),
  combustivel: z.nativeEnum(Combustiveis).optional(),
  km: z.number().optional(),
});

router.get("/", async (req, res) => {
  const carros = await prisma.carro.findMany({});
  res.status(200).json(carros);
});

router.post("/", async (req, res) => {
  const result = carro_Schema.safeParse(req.body);
  console.log(result);

  if (!result.success) {
    res.status(400).json({ error: result.error });
    return;
  }

  const carro = await prisma.carro.create({
    data: result.data,
  });
  res.status(201).json(carro);
});

router.delete("/:id", async (req, res) => {
  const { id } = req.params;

  const carros = await prisma.carro.delete({
    where: { id: Number(id) },
  });
  res.status(200).json(carros);
});

router.put("/:id", async (req, res) => {
  const { id } = req.params;

  const result = carro_Schema.safeParse(req.body);
  if (!result.success) {
    res.status(400).json({ error: result.error });
    return;
  }

  const carros = await prisma.carro.update({
    where: { id: Number(id) },
    data: result.data,
  });
  res.status(200).json(carros);
});

router.get("/pesquisa/:modelo", async (req, res) => {
  const { modelo } = req.params;

  const carros = await prisma.carro.findMany({
    orderBy: { id: "desc" },
    where: { modelo: { contains: modelo } },
  });
  res.status(200).json(carros);
});

export default router;