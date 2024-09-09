import express from 'express'
const app = express()
const port = 3000

import routerCarros from './routes/carros'

app.use(express.json())
app.use('/carros', routerCarros)

app.get('/', (req, res) => {
  res.send('API: Cadastro de Veículos')
})

app.listen(port, () => {
  console.log(`Servidor rodando na porta: ${port}`)
})