import express from 'express'

const app = express()
const port = 3000

import RouterCarros from './routes/carros'

app.use(express.json())
app.use('/carros', RouterCarros)

app.get('/', (req, res) => {
     res.send('API: Cadastro de veiculos')
})

app.listen(port, () => {
     console.log("TA RODANDO HEIN UWU ")
})


