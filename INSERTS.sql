-- Inserindo Tipos de Produto
EXEC crudTipo(1, 'Eletrônicos', 'insert');
EXEC crudTipo(2, 'Roupas', 'insert');
EXEC crudTipo(3, 'Alimentos', 'insert');
EXEC crudTipo(4, 'Móveis', 'insert');
EXEC crudTipo(5, 'Automóveis', 'insert');
EXEC crudTipo(6, 'Livros', 'insert');
EXEC crudTipo(7, 'Brinquedos', 'insert');
EXEC crudTipo(8, 'Cosméticos', 'insert');
EXEC crudTipo(9, 'Ferramentas', 'insert');
EXEC crudTipo(10, 'Jogos', 'insert');

-- Inserindo Produtos
EXEC crudProduto(1, 'iPhone 13 Pro', 1, 'insert');
EXEC crudProduto(2, 'Camiseta Polo Ralph Lauren', 2, 'insert');
EXEC crudProduto(3, 'Arroz Tio João Grãos Nobres', 3, 'insert');
EXEC crudProduto(4, 'Sofá de Couro Legítimo', 4, 'insert');
EXEC crudProduto(5, 'Toyota Camry', 5, 'insert');
EXEC crudProduto(6, 'Livro "Cem Anos de Solidão"', 6, 'insert');
EXEC crudProduto(7, 'Hot Wheels', 7, 'insert');
EXEC crudProduto(8, 'Batom', 8, 'insert');
EXEC crudProduto(9, 'Chave de Fenda Phillips', 9, 'insert');
EXEC crudProduto(10, 'Xbox Series X', 10, 'insert');

-- Inserindo Cargos
EXEC crudCargo(1, 'Desenvolvedor', 'insert');
EXEC crudCargo(2, 'Gerente de Marketing', 'insert');
EXEC crudCargo(3, 'Analista Financeiro', 'insert');
EXEC crudCargo(4, 'Designer Gráfico', 'insert');
EXEC crudCargo(5, 'Engenheiro de Software', 'insert');
EXEC crudCargo(6, 'Gerente de Recursos Humanos', 'insert');
EXEC crudCargo(7, 'Contador', 'insert');
EXEC crudCargo(8, 'Arquiteto de Soluções', 'insert');
EXEC crudCargo(9, 'Assistente Administrativo', 'insert');
EXEC crudCargo(10, 'Analista de Suporte Técnico', 'insert');

-- Insrindo Funcionários
EXEC crudFuncionario(1, 'João Silva', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 1, NULL, 'insert');
EXEC crudFuncionario(2, 'Maria Santos', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 2, NULL, 'insert');
EXEC crudFuncionario(3, 'Carlos Rodrigues', TO_DATE('2023-03-10', 'YYYY-MM-DD'), 3, 1, 'insert');
EXEC crudFuncionario(4, 'Ana Pereira', TO_DATE('2023-04-05', 'YYYY-MM-DD'), 4, 1, 'insert');
EXEC crudFuncionario(5, 'Luiz Fernandes', TO_DATE('2023-05-08', 'YYYY-MM-DD'), 5, 2, 'insert');
EXEC crudFuncionario(6, 'Cláudia Alves', TO_DATE('2023-06-14', 'YYYY-MM-DD'), 6, 2, 'insert');
EXEC crudFuncionario(7, 'Pedro Souza', TO_DATE('2023-07-19', 'YYYY-MM-DD'), 7, 3, 'insert');
EXEC crudFuncionario(8, 'Mariana Costa', TO_DATE('2023-08-25', 'YYYY-MM-DD'), 8, 3, 'insert');
EXEC crudFuncionario(9, 'Eduardo Nunes', TO_DATE('2023-09-30', 'YYYY-MM-DD'), 9, 4, 'insert');
EXEC crudFuncionario(10, 'Sofia Almeida', TO_DATE('2023-10-06', 'YYYY-MM-DD'), 10, 4, 'insert');


COMMIT;
