// persistencia.ts
import { Livro } from './Livro';
import { Membro } from './membro';
import { Emprestimo } from './emprestimo';
import * as fs from 'fs';

export class Persistencia {
    static salvarLivros(livros: Livro[], caminho: string): void {
        fs.writeFileSync(caminho, JSON.stringify(livros, null, 2));
    }

    static carregarLivros(caminho: string): Livro[] {
        if (!fs.existsSync(caminho)) return [];
        const data = fs.readFileSync(caminho, 'utf-8');
        return JSON.parse(data).map((obj: any) => new Livro(obj.titulo, obj.autor, obj.isbn, obj.anoPublicacao));
    }

    static salvarMembros(membros: Membro[], caminho: string): void {
        fs.writeFileSync(caminho, JSON.stringify(membros, null, 2));
    }

    static carregarMembros(caminho: string): Membro[] {
        if (!fs.existsSync(caminho)) return [];
        const data = fs.readFileSync(caminho, 'utf-8');
        return JSON.parse(data).map((obj: any) => new Membro(obj.nome, obj.endereco, obj.telefone, obj.numeroMatricula));
    }

    static salvarEmprestimos(emprestimos: Emprestimo[], caminho: string): void {
        fs.writeFileSync(caminho, JSON.stringify(emprestimos, null, 2));
    }

    static carregarEmprestimos(caminho: string): Emprestimo[] {
        if (!fs.existsSync(caminho)) return [];
        const data = fs.readFileSync(caminho, 'utf-8');
        return JSON.parse(data).map((obj: any) => new Emprestimo(
            new Membro(obj.membro.nome, obj.membro.endereco, obj.membro.telefone, obj.membro.numeroMatricula),
            new Livro(obj.livro.titulo, obj.livro.autor, obj.livro.isbn, obj.livro.anoPublicacao),
            new Date(obj.dataEmprestimo),
            obj.dataDevolucao ? new Date(obj.dataDevolucao) : null
        ));
    }
}

