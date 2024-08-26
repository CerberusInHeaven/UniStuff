import readline from 'readline';
import { Livro } from './Livro';
import { Membro } from './membro';
import { Emprestimo } from './emprestimo';
import { Persistencia } from './Persistencia';

// Carrega dados-desuwaaaa ^w^
const livros: Livro[] = Persistencia.carregarLivros('livros.json');
const membros: Membro[] = Persistencia.carregarMembros('membros.json');
const emprestimos: Emprestimo[] = Persistencia.carregarEmprestimos('emprestimos.json');

// IMAGINE USAR  READLINE AHAHAHAHAHAHAHAAAAAAA
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

export function mainMenu() {
    console.log('\nEscolha uma opção:');
    console.log('1. Gerenciamento de livros');
    console.log('2. Gerenciamento de membros');
    console.log('3. Gerenciamento de Empréstimos');
    console.log('4. Sair');

    rl.question('Digite o número da opção escolhida: ', async (opcao) => {
        switch (opcao) {
            case '1':
                await menuLivros();
                console.log('------------')
                break;
            case '2':
                await menuMembros();
                console.log('------------')
                break;
            case '3':
                await menuEmprestimos();
                console.log('------------')
                break;
            case '4':
                console.log('Saindo...');
                rl.close();
                return;
            default:
                console.log('Opção inválida!');
        }
        
    });
}

export async function menuLivros() {
    console.log('\nEscolha uma opção:');
    console.log('1. Adicionar Livro');
    console.log('2. Listar Livros');
    console.log('3. Atualizar Livro');
    console.log('4. Remover Livro');
    console.log('5. Voltar');

    rl.question('Digite o número da opção escolhida: ', async (opcao) => {
        switch (opcao) {
            case '1':
                await adicionarLivro();
                break;
            case '2':
                listarLivros();
                break;
            case '3':
                await atualizarLivro();
                break;
            case '4':
                await removerLivro();
                break;
            case '5':
                    mainMenu();
                    break;
            default:
                console.log('Opção inválida!');
        }
        if (opcao != "5"){
        await menuLivros();}
    });
}

export async function adicionarLivro() {
    const perguntas = [
        'Título do Livro: ',
        'Autor do Livro: ',
        'ISBN do Livro: ',
        'Ano de Publicação do Livro: '
    ];
    let respostas: { [key: string]: string } = {};

    for (let pergunta of perguntas) {
        respostas[pergunta] = await new Promise<string>((resolve) => {
            rl.question(pergunta, (answer) => {
                resolve(answer);
            });
        });
    }

    const novoLivro = new Livro(
        respostas[perguntas[0]], 
        respostas[perguntas[1]], 
        respostas[perguntas[2]], 
        parseInt(respostas[perguntas[3]])
    );
    livros.push(novoLivro);
    Persistencia.salvarLivros(livros, 'livros.json');
    console.log('\n Livro adicionado com sucesso!');
}

export function listarLivros() {
    console.log('\nLista de Livros:');
    livros.forEach(livro => {
        console.log(`${livro.titulo} - ${livro.autor} (ISBN: ${livro.isbn}, Ano: ${livro.anoPublicacao})`);
    });
}

export async function atualizarLivro() {
    rl.question('Digite o ISBN do livro a ser atualizado: ', (isbn) => {
        const livro = livros.find(l => l.isbn === isbn);
        if (!livro) {
            console.log('Livro não encontrado.');
            menuLivros();
            return;
        }

        rl.question('Novo Título do Livro: ', (novoTitulo) => {
            rl.question('Novo Autor do Livro: ', (novoAutor) => {
                rl.question('Novo Ano de Publicação do Livro: ', (novoAno) => {
                    livro.titulo = novoTitulo;
                    livro.autor = novoAutor;
                    livro.anoPublicacao = parseInt(novoAno);
                    Persistencia.salvarLivros(livros, 'livros.json');
                    console.log('\n Livro atualizado com sucesso!');
                    menuLivros();
                });
            });
        });
    });
}

export async function removerLivro() {
    rl.question('Digite o ISBN do livro a ser removido: ', (isbn) => {
        const indice = livros.findIndex(l => l.isbn === isbn);
        if (indice === -1) {
            console.log('Livro não encontrado.');
            menuLivros();
            return;
        }

        livros.splice(indice, 1);
        Persistencia.salvarLivros(livros, 'livros.json');
        console.log('\n Livro removido com sucesso!');
        menuLivros();
    });
}

async function menuMembros() {
    console.log(`\nMenu de Membros:
1. Adicionar Membro
2. Listar Membros
3. Atualizar Membro
4. Remover Membro
5. Voltar`);

    rl.question('Escolha uma opção: ', (resposta) => {
        switch (resposta) {
            case '1':
                adicionarMembro();
                break;
            case '2':
                listarMembros();
                break;
            case '3':
                atualizarMembro();
                break;
            case '4':
                removerMembro();
                break;
            case '5':
                mainMenu();
                break;
            default:
                console.log('Opção inválida.');
                menuMembros();
                break;
        }
    });
}

async function adicionarMembro() {
    rl.question('Nome do Membro: ', (nome) => {
        rl.question('Endereço do Membro: ', (endereco) => {
            rl.question('Telefone do Membro: ', (telefone) => {
                rl.question('Número de Matrícula do Membro: ', (numeroMatricula) => {
                    const novoMembro = new Membro(nome, endereco, telefone, numeroMatricula);
                    membros.push(novoMembro);
                    Persistencia.salvarMembros(membros, 'membros.json');
                    console.log('\n Membro adicionado com sucesso!');
                    menuMembros();
                });
            });
        });
    });
}

function listarMembros() {
    console.log('\nLista de Membros:');
    membros.forEach(membro => {
        console.log(`${membro.nome} - ${membro.numeroMatricula} (Endereço: ${membro.endereco}, Telefone: ${membro.telefone})`);
    });
    menuMembros();
}

async function atualizarMembro() {
    rl.question('Digite o número de matrícula do membro a ser atualizado: ', (numeroMatricula) => {
        const membro = membros.find(m => m.numeroMatricula === numeroMatricula);
        if (!membro) {
            console.log('Membro não encontrado.');
            menuMembros();
            return;
        }

        rl.question('Novo Nome do Membro: ', (novoNome) => {
            rl.question('Novo Endereço do Membro: ', (novoEndereco) => {
                rl.question('Novo Telefone do Membro: ', (novoTelefone) => {
                    membro.nome = novoNome;
                    membro.endereco = novoEndereco;
                    membro.telefone = novoTelefone;
                    Persistencia.salvarMembros(membros, 'membros.json');
                    console.log('\n Membro atualizado com sucesso!');
                    menuMembros();
                });
            });
        });
    });
}

async function removerMembro() {
    rl.question('Digite o número de matrícula do membro a ser removido: ', (numeroMatricula) => {
        const indice = membros.findIndex(m => m.numeroMatricula === numeroMatricula);
        if (indice === -1) {
            console.log('Membro não encontrado.');
            menuMembros();
            return;
        }

        membros.splice(indice, 1);
        Persistencia.salvarMembros(membros, 'membros.json');
        console.log('\n Membro removido com sucesso!');
        menuMembros();
    });
}

async function menuEmprestimos() {
    console.log(`\nMenu de Empréstimos:
               1. Realizar Empréstimo
               2. Listar Empréstimos Ativos
               3. Registrar Devolução
               4. Listar Histórico de Empréstimos
               5. Voltar`);

    rl.question('Escolha uma opção: ', (resposta) => {
        switch (resposta) {
            case '1':
                realizarEmprestimo();
                break;
            case '2':
                listarEmprestimosAtivos();
                break;
            case '3':
                registrarDevolucao();
                break;
            case '4':
                listarHistoricoEmprestimos();
                break;
            case '5':
                mainMenu();
                break;
            default:
                console.log('Opção inválida.');
                menuEmprestimos();
                break;
        }
    });
}

async function realizarEmprestimo() {
    rl.question('Número de Matrícula do Membro: ', (numeroMatricula) => {
        const membro = membros.find(m => m.numeroMatricula === numeroMatricula);
        if (!membro) {
            console.log('Membro não encontrado.');
            menuEmprestimos();
            return;
        }

        rl.question('ISBN do Livro: ', (isbn) => {
            const livro = livros.find(l => l.isbn === isbn);
            if (!livro) {
                console.log('Livro não encontrado.');
                menuEmprestimos();
                return;
            }

            const novoEmprestimo = new Emprestimo(membro, livro, new Date());
            emprestimos.push(novoEmprestimo);
            Persistencia.salvarEmprestimos(emprestimos, 'emprestimos.json');
            console.log('\n Empréstimo realizado com sucesso!');
            menuEmprestimos();
        });
    });
}

function listarEmprestimosAtivos() {
    console.log('\nEmpréstimos Ativos:');
    const emprestimosAtivos = emprestimos.filter(e => !e.dataDevolucao);
    emprestimosAtivos.forEach(emprestimo => {
        console.log(`Membro: ${emprestimo.membro.nome} - Livro: ${emprestimo.livro.titulo} (Data do Empréstimo: ${emprestimo.dataEmprestimo.toLocaleDateString()})`);
    });
    menuEmprestimos();
}

async function registrarDevolucao() {
    rl.question('Número de Matrícula do Membro: ', (numeroMatricula) => {
        const membro = membros.find(m => m.numeroMatricula === numeroMatricula);
        if (!membro) {
            console.log('Membro não encontrado.');
            menuEmprestimos();
            return;
        }

        rl.question('ISBN do Livro: ', (isbn) => {
            const emprestimo = emprestimos.find(e => e.membro.numeroMatricula === numeroMatricula && e.livro.isbn === isbn && !e.dataDevolucao);
            if (!emprestimo) {
                console.log('Empréstimo não encontrado.');
                menuEmprestimos();
                return;
            }

            emprestimo.dataDevolucao = new Date();
            Persistencia.salvarEmprestimos(emprestimos, 'emprestimos.json');
            console.log('\n Devolução registrada com sucesso!');
            menuEmprestimos();
        });
    });
}

function listarHistoricoEmprestimos() {
    console.log('\nHistórico de Empréstimos:');
    emprestimos.forEach(emprestimo => {
        const dataDevolucao = emprestimo.dataDevolucao ? emprestimo.dataDevolucao.toLocaleDateString() : 'Ainda não devolvido';
        console.log(`Membro: ${emprestimo.membro.nome} - Livro: ${emprestimo.livro.titulo} (Data do Empréstimo: ${emprestimo.dataEmprestimo.toLocaleDateString()}, Data da Devolução: ${dataDevolucao})`);
    });
    menuEmprestimos();
}


mainMenu(); ///PRA ABRIR JÁ ESTRALANDO O MENUZIN DO PAI
