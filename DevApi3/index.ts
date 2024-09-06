import express from 'express'

const app = express()
const port = 3000

import RouterCarros from './routes/viagens'

app.use(express.json())
app.use('/carros', RouterCarros)

app.get('/', (req, res) => {
     res.send('viagens avenida gang gang')
})

app.listen(port, () => {
     console.log("posted up on gang niggu ")
})


