import {Pessoa} from "./pessoa";

export class Membro extends Pessoa {

    
    constructor(nome: string, endereco: string, telefone: string, public numeroMatricula: string){
        super(nome, endereco, telefone,)
    
     }
  
    }
