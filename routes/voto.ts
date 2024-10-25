import { Cliente, Voto, Candidata } from './../node_modules/.prisma/client/index.d';



import { PrismaClient } from '@prisma/client'
import { Router } from 'express'
import { number, z } from 'zod'

const prisma = new PrismaClient()


const router = Router()


const nodemailer = require("nodemailer");

const transporter = nodemailer.createTransport({
  host: "sandbox.smtp.mailtrap.io",
  port: 587,
  secure: false, // true for port 465, false for other ports
  auth: {
    user: "b66ac2eb496dc0",
    pass: "8011e6f499d0dc",
  },
});

const votoSchema = z.object({
  clienteid: z.number(),
  candidataId: z.number(),
  justificativa: z.string().optional()
  
  
  })

  // async..await is not allowed in global scope, must use a wrapper
  async function enviaemail(email: string, nome: string, Candidata: string) {
    
    let mensagem = ""
    mensagem += `<h4> eae ${nome}</h4>`
    mensagem += `<h4> recebuuu o teuu votuuu paiiiwwww</h4>`
    mensagem += `<h4> tu votou na ${Candidata} né, que noixxx ta ligadu</h4>`
    
    const info = await transporter.sendMail({
      from: '"AS MAIS TUNADAS UWU" <TUNADAS-2025@AIAIUIUI.COM>', // sender address
      to: email, // list of receivers
      subject: "Votou no 22 ou no 13 hein hein hein uwu", // Subject line
      text: "da uma sugada", // plain text body
      html: mensagem, // html body
    });
  
    console.log("Message sent: %s", info.messageId);
    // Message sent: <d786aa62-4e0a-070a-47ed-0b0666549519@ethereal.email>
  }

router.get("/", async (req, res) => {
  try {
    const votos = await prisma.voto.findMany(
        {include: {
            cliente:true,
            candidata: true
        }}
    )
    res.status(200).json(votos)
  } catch (error) {
    res.status(500).json({ erro: error })
  }
})

router.post("/", async (req, res) => {

  const valida = votoSchema.safeParse(req.body)
  if (!valida.success) {
    res.status(400).json({ erro: valida.error })
    return
  }

  try {
    const [Voto, Candidata] = await prisma.$transaction([
        prisma.voto.create({data: valida.data }),
        prisma.candidata.update({
            where: { id: valida.data.candidataId },
            data: {NumVotos: {increment: 1}}
        })
    ])
    //cliente dado
    const dadoCliente = await prisma.cliente.findUnique({where: {id:valida.data.clienteid }})
    const dadoCandidata = await prisma.candidata.findUnique({where: {id:valida.data.candidataId }})
    
    enviaemail(dadoCliente?.email as string, 
        dadoCliente?.nome as string, 
        dadoCandidata?.nome as string)

    res.status(201).json()
  } catch (error) {
    res.status(400).json({ error })
  }
})

router.delete("/:id", async (req, res) => {
  const { id } = req.params

  try {

     const dadovoto = await prisma.voto.findUnique({where: {id: Number(id) }})



    const [Voto, Candidata] = await prisma.$transaction([
        prisma.voto.delete({where: {id: Number(id)}}),
        prisma.candidata.update({
            where: {id: dadovoto?.candidataId },
            data: {NumVotos: {decrement: 1}}
        })
    ])
    res.status(200).json()
  } catch (error) {
    res.status(400).json({ erro: error })
  }
})



export default router
