import express from 'express'
import routeswines from './routes/wine'
import routesvinhos from './routes/wine2'
const app = express()
const port = 3000

app.use(express.json())

app.use("/Marcas", routeswines)
app.use("/Vinhos", routesvinhos)

app.get('/', (req, res) => {
  res.send('da uma sugada no meu vinho')
})

app.listen(port, () => {
  console.log(`VTNC LULA: ${port}`)
})