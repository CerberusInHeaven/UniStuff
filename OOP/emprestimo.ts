import { Membro } from './membro';
import { Livro } from './Livro'

export class Emprestimo {
    constructor(
        public membro: Membro,
        public livro: Livro,
        public dataEmprestimo: Date,
        public dataDevolucao: Date | null = null
    ) {}
}