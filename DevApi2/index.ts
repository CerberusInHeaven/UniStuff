import express from 'express'

const app = express()
const port = 3000

import AlunoRoutes from './routes/aluno'

app.use(express.json())
app.use('/alunos', AlunoRoutes)


app.get('/', (req, res) =>{
     res.send('gestão de carrinhos da hotwheels') }
)

app.get('/test2', (req, res) =>{
     res.send('só os mais fortes vão entender essa referencia gamer \n  baobaobaobao') }
)

app.listen(port, () => {
       console.log(`aiai uiui to rodando na portiha ${port}`)})