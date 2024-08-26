import fs from "fs";
import { Persistencia } from "./Persistencia";
import { Livro } from "./Livro";
import { Membro } from "./membro";
import { Emprestimo } from "./emprestimo";

// Mockando fs.writeFileSync, fs.readFileSync, e fs.existsSync
jest.mock("fs");

describe("Persistencia", () => {
  beforeEach(() => {
    // Limpa todos os Mocks antes dos testes
    jest.clearAllMocks();
  });

  describe("Salvar e Carregar Livros", () => {
    const caminhoLivros = "livros_test.json";
    const livrosMock: Livro[] = [
      new Livro("Livro A", "Autor A", "1234567890", 2020),
      new Livro("Livro B", "Autor B", "0987654321", 2019),
    ];

    it("Deve salvar livros corretamente", () => {
      Persistencia.salvarLivros(livrosMock, caminhoLivros);

      // Verifica se fs.writeFileSync foi chamado com os argumentos certos
      expect(fs.writeFileSync).toHaveBeenCalledWith(
        caminhoLivros,
        JSON.stringify(livrosMock, null, 2)
      );
    });

    it("Deve carregar livros corretamente", () => {
      // Simula o retorno esperado do arquivo JSON
      const dataMock = JSON.stringify(livrosMock);
      (fs.readFileSync as jest.Mock).mockReturnValueOnce(dataMock);

      // Simula a existência do arquivo
      (fs.existsSync as jest.Mock).mockReturnValue(true);

      const livrosCarregados = Persistencia.carregarLivros(caminhoLivros);

      // Verifica se fs.existsSync foi chamado com o caminho certo
      expect(fs.existsSync).toHaveBeenCalledWith(caminhoLivros);

      // Verifica se os livros carregados correspondem aos livros mockados
      expect(livrosCarregados).toMatchObject(
        livrosMock.map((livro) => expect.objectContaining(livro))
      );
    });
  });

  describe("Salvar e Carregar Membros", () => {
    const caminhoMembros = "membros_test.json";
    const membrosMock: Membro[] = [
      new Membro("Membro A", "Endereco A", "123456789", "123"),
      new Membro("Membro B", "Endereco B", "987654321", "456"),
    ];

    it("Deve salvar membros corretamente", () => {
      Persistencia.salvarMembros(membrosMock, caminhoMembros);

     
      expect(fs.writeFileSync).toHaveBeenCalledWith(
        caminhoMembros,
        JSON.stringify(membrosMock, null, 2)
      );
    });

    it("Deve carregar membros corretamente", () => {
      
      const dataMock = JSON.stringify(membrosMock);
      (fs.readFileSync as jest.Mock).mockReturnValueOnce(dataMock);

     
      (fs.existsSync as jest.Mock).mockReturnValue(true);

      const membrosCarregados = Persistencia.carregarMembros(caminhoMembros);

      
      expect(fs.existsSync).toHaveBeenCalledWith(caminhoMembros);

      // Verifica se os membros carregados correspondem aos membros mockados
      expect(membrosCarregados).toMatchObject(
        membrosMock.map((membro) => expect.objectContaining(membro))
      );
    });
  });

  describe("Salvar e Carregar Empréstimos", () => {
    const caminhoEmprestimos = "emprestimos_test.json";
    const membrosMock: Membro[] = [
      new Membro("Membro A", "Endereco A", "123456789", "123"),
      new Membro("Membro B", "Endereco B", "987654321", "456"),
    ];
    const livrosMock: Livro[] = [
      new Livro("Livro A", "Autor A", "1234567890", 2020),
      new Livro("Livro B", "Autor B", "0987654321", 2019),
    ];
    const emprestimosMock: Emprestimo[] = [
      new Emprestimo(
        membrosMock[0],
        livrosMock[0],
        new Date("2024-01-01"),
        new Date("2024-02-01")
      ),
      new Emprestimo(membrosMock[1], livrosMock[1], new Date("2024-03-01")),
    ];

    it("Deve salvar empréstimos corretamente", () => {
      Persistencia.salvarEmprestimos(emprestimosMock, caminhoEmprestimos);

      
      expect(fs.writeFileSync).toHaveBeenCalledWith(
        caminhoEmprestimos,
        JSON.stringify(emprestimosMock, null, 2)
      );
    });

    it("Deve carregar empréstimos corretamente", () => {
  
      const dataMock = JSON.stringify(
        emprestimosMock.map((e) => ({
          membro: e.membro,
          livro: e.livro,
          dataEmprestimo: e.dataEmprestimo.toISOString(),
          dataDevolucao: e.dataDevolucao?.toISOString(),
        }))
      );
      (fs.readFileSync as jest.Mock).mockReturnValueOnce(dataMock);

  
      (fs.existsSync as jest.Mock).mockReturnValue(true);

      const emprestimosCarregados =
        Persistencia.carregarEmprestimos(caminhoEmprestimos);

      
      expect(fs.existsSync).toHaveBeenCalledWith(caminhoEmprestimos);

      
      expect(emprestimosCarregados).toHaveLength(emprestimosMock.length);
      expect(emprestimosCarregados[0].dataEmprestimo).toEqual(
        emprestimosMock[0].dataEmprestimo
      );
      expect(emprestimosCarregados[1].dataDevolucao).toBeNull();
    });
  });
});
