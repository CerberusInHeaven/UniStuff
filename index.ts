import express from 'express'
import routesCandidatas from './routes/kandidatos'
import clienteRotas from './routes/Clientes'
import votorota from './routes/voto'


const app = express()
const port = 3000

app.use(express.json())

app.use("/Candidatas", routesCandidatas)
app.use("/Votos", votorota)
app.use("/Clientes", clienteRotas)

app.get('/', (req, res) => {
  res.send('API: Berçário (cadastro de Mães, Médicos e Bebês)')
})

app.listen(port, () => {
  console.log(`Servidor rodando na porta: ${port}`)
})