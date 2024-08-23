import { Router } from "express";

const router = Router()
const alunos = [
    {
        "id": 1,
        "nome": "ruri",
        "curso": "aquele lá"
    },
    
    {
        "id": 2,
        "nome": "igon",
        "curso": "aquele de gritar"
    },
    
    {
        "id": 3,
        "nome": "saiba momoi",
        "curso": "Racismo: Na pratica"
    }
]

router.get('/' , (req, res) =>{
    
    res.status(200).json(alunos)

})

router.post('/', (req, res) =>{
    const {nome, curso} = req.body

    alunos.push;{
        id: alunos.length,
        nome,
        curso
    }

    res.status(201).json({id: alunos.length,
        mensagem: "Ok! inserido com sucesso"
    })
})

router.delete('/:id' , (req, res) =>{
    const id = req.params.id

    //const { id } = req.params

    const index = alunos.findIndex((alunos) =>
          alunos.id == Number(id))

    if(index == -1){
        res.status(404).send("Aluno não encontrado, tu é esquizofrénico é ? ")
    } else{
        alunos.splice(index, 1)
        res.status(204).send()       
    }

    res.status(200).json(alunos)
        

})
export default router