
import express from 'express'
import routebebe from './routes/beberota'
import routemae from './routes/maerota'
import routemedico from './routes/medicorota'

const app = express()
const porta = 3000 

app.use(express.json())



app.use("/Bebes", routebebe)
app.use("/maes", routemae)
app.use("/medicos", routemedico)

app.get('/', (req, res) =>{
    res.send('exercicio 2 ')
})

app.listen(porta, () =>{
    console.log(`SURF GANG SURF GANG SURF GANG ${porta}`)
})