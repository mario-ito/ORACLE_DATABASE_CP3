-- Inserindo Países
EXEC crudPais(1, 'Brasil', 'insert');
EXEC crudPais(2, 'Estados Unidos', 'insert');
EXEC crudPais(3, 'França', 'insert');
EXEC crudPais(4, 'Alemanha', 'insert');
EXEC crudPais(5, 'Japão', 'insert');
EXEC crudPais(6, 'Canadá', 'insert');
EXEC crudPais(7, 'Austrália', 'insert');
EXEC crudPais(8, 'Itália', 'insert');
EXEC crudPais(9, 'Espanha', 'insert');
EXEC crudPais(10, 'China', 'insert');

-- Inserindo Estados
EXEC crudEstado(1, 'São Paulo', 1, 'insert');
EXEC crudEstado(2, 'California', 2, 'insert');
EXEC crudEstado(3, 'Île-de-France', 3, 'insert');
EXEC crudEstado(4, 'Baviera', 4, 'insert');
EXEC crudEstado(5, 'Tóquio', 5, 'insert');
EXEC crudEstado(6, 'Ontário', 6, 'insert');
EXEC crudEstado(7, 'Queensland', 7, 'insert');
EXEC crudEstado(8, 'Lácio', 8, 'insert');
EXEC crudEstado(9, 'Madri', 9, 'insert');
EXEC crudEstado(10, 'Pequim', 10, 'insert');

-- Inserindo Cidades
EXEC crudCidade(1, 'São Paulo', 1, 'insert');
EXEC crudCidade(2, 'Los Angeles', 2, 'insert');
EXEC crudCidade(3, 'Paris', 3, 'insert');
EXEC crudCidade(4, 'Munique', 4, 'insert');
EXEC crudCidade(5, 'Tóquio', 5, 'insert');
EXEC crudCidade(6, 'Toronto', 6, 'insert');
EXEC crudCidade(7, 'Brisbane', 7, 'insert');
EXEC crudCidade(8, 'Roma', 8, 'insert');
EXEC crudCidade(9, 'Madri', 9, 'insert');
EXEC crudCidade(10, 'Pequim', 10, 'insert');

-- Inserindo Bairros
EXEC crudBairro(1, 'Jardins', 1, 'insert');
EXEC crudBairro(2, 'Hollywood', 2, 'insert');
EXEC crudBairro(3, 'Montmartre', 3, 'insert');
EXEC crudBairro(4, 'Schwabing', 4, 'insert');
EXEC crudBairro(5, 'Shinjuku', 5, 'insert');
EXEC crudBairro(6, 'Yorkville', 6, 'insert');
EXEC crudBairro(7, 'South Bank', 7, 'insert');
EXEC crudBairro(8, 'Trastevere', 8, 'insert');
EXEC crudBairro(9, 'Chamberí', 9, 'insert');
EXEC crudBairro(10, 'Chaoyang', 10, 'insert');

-- Inserindo Endereços de Clientes
EXEC crudEnderecoCliente(1, 123, 12345678, 'Próximo ao Parque', 1, 'insert');
EXEC crudEnderecoCliente(2, 456, 98765432, 'Perto da Praia', 2, 'insert');
EXEC crudEnderecoCliente(3, 789, 54321876, 'Centro da Cidade', 3, 'insert');
EXEC crudEnderecoCliente(4, 101, 87654321, 'Vista Panorâmica', 4, 'insert');
EXEC crudEnderecoCliente(5, 202, 23456789, 'Ao Lado da Estação', 5, 'insert');
EXEC crudEnderecoCliente(6, 303, 67890123, 'No Coração da Cidade', 6, 'insert');
EXEC crudEnderecoCliente(7, 404, 34567890, 'Próximo ao Rio', 7, 'insert');
EXEC crudEnderecoCliente(8, 505, 89012345, 'Rua Histórica', 8, 'insert');
EXEC crudEnderecoCliente(9, 606, 45678901, 'Zona Residencial', 9, 'insert');
EXEC crudEnderecoCliente(10, 707, 21098765, 'Próximo ao Shopping', 10, 'insert');

-- Inserindo Clientes
EXEC crudCliente(1, 'Cliente PF 1', 1, 'insert');
EXEC crudCliente(2, 'Cliente PF 2', 2, 'insert');
EXEC crudCliente(3, 'Cliente PF 3', 3, 'insert');
EXEC crudCliente(4, 'Cliente PF 4', 4, 'insert');
EXEC crudCliente(5, 'Cliente PF 5', 5, 'insert');
EXEC crudCliente(6, 'Cliente PF 6', 6, 'insert');
EXEC crudCliente(7, 'Cliente PF 7', 7, 'insert');
EXEC crudCliente(8, 'Cliente PF 8', 8, 'insert');
EXEC crudCliente(9, 'Cliente PF 9', 9, 'insert');
EXEC crudCliente(10, 'Cliente PF 10', 10, 'insert');

-- Inserindo Clientes adicionais
EXEC crudCliente(11, 'Cliente PJ 11', 1, 'insert');
EXEC crudCliente(12, 'Cliente PJ 12', 2, 'insert');
EXEC crudCliente(13, 'Cliente PJ 13', 3, 'insert');
EXEC crudCliente(14, 'Cliente PJ 14', 4, 'insert');
EXEC crudCliente(15, 'Cliente PJ 15', 5, 'insert');
EXEC crudCliente(16, 'Cliente PJ 16', 6, 'insert');
EXEC crudCliente(17, 'Cliente PJ 17', 7, 'insert');
EXEC crudCliente(18, 'Cliente PJ 18', 8, 'insert');
EXEC crudCliente(19, 'Cliente PJ 19', 9, 'insert');
EXEC crudCliente(20, 'Cliente PJ 20', 10, 'insert');

-- Inserindo Gêneros
EXEC crudGenero(1, 'Masculino', 'insert');
EXEC crudGenero(2, 'Feminino', 'insert');
EXEC crudGenero(3, 'Homem Cisgenero', 'insert');
EXEC crudGenero(4, 'Homem Transgenero', 'insert');
EXEC crudGenero(5, 'Mulher Cisgenero', 'insert');
EXEC crudGenero(6, 'Mulher Transgenero', 'insert');
EXEC crudGenero(7, 'Agenero', 'insert');
EXEC crudGenero(8, 'LGBT', 'insert');
EXEC crudGenero(9, 'Transexual', 'insert');
EXEC crudGenero(10, 'Genero nao Binario', 'insert');

-- Inserindo Clientes Físicos
EXEC crudClienteFisico(1, 12345678901, 1, 1, 'insert');
EXEC crudClienteFisico(2, 23456789012, 2, 2, 'insert');
EXEC crudClienteFisico(3, 34567890123, 3, 3, 'insert');
EXEC crudClienteFisico(4, 45678901234, 4, 4, 'insert');
EXEC crudClienteFisico(5, 56789012345, 5, 5, 'insert');
EXEC crudClienteFisico(6, 67890123456, 6, 6, 'insert');
EXEC crudClienteFisico(7, 78901234567, 7, 7, 'insert');
EXEC crudClienteFisico(8, 89012345678, 8, 8, 'insert');
EXEC crudClienteFisico(9, 90123456789, 9, 9, 'insert');
EXEC crudClienteFisico(10, 12345678901, 10, 10, 'insert');

-- Inserindo Clientes Jurídicos
EXEC crudClienteJurica(1, '12345678901234', '489464', 11, 'insert');
EXEC crudClienteJurica(2, '23456789012345', '123456', 12, 'insert');
EXEC crudClienteJurica(3, '34567890123456', '987654', 13, 'insert');
EXEC crudClienteJurica(4, '45678901234567', '654321', 14, 'insert');
EXEC crudClienteJurica(5, '56789012345678', '321654', 15, 'insert');
EXEC crudClienteJurica(6, '67890123456789', '456789', 16, 'insert');
EXEC crudClienteJurica(7, '78901234567890', '987654', 17, 'insert');
EXEC crudClienteJurica(8, '89012345678901', '654321', 18, 'insert');
EXEC crudClienteJurica(9, '90123456789012', '321654', 19, 'insert');
EXEC crudClienteJurica(10, '12345678901234', '456789', 20, 'insert');

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

-- Inserindo Funcionários
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

-- Inserindo Pedidos
EXEC crudPedido(1, TO_DATE('2023-04-01', 'YYYY-MM-DD'), 1, 1, 1, 1, 1, 1, 'insert');
EXEC crudPedido(2, TO_DATE('2023-02-02', 'YYYY-MM-DD'), 2, 2, 2, 2, 2, 2, 'insert');
EXEC crudPedido(3, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 3, 3, 3, 3, 3, 3, 'insert');
EXEC crudPedido(4, TO_DATE('2022-01-04', 'YYYY-MM-DD'), 4, 4, 4, 4, 4, 4, 'insert');
EXEC crudPedido(5, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 5, 5, 5, 5, 5, 5, 'insert');
EXEC crudPedido(6, TO_DATE('2022-04-10', 'YYYY-MM-DD'), 6, 6, 6, 6, 6, 6, 'insert');
EXEC crudPedido(7, TO_DATE('2023-01-02', 'YYYY-MM-DD'), 7, 7, 7, 7, 7, 7, 'insert');
EXEC crudPedido(8, TO_DATE('2022-04-15', 'YYYY-MM-DD'), 8, 8, 8, 8, 8, 8, 'insert');
EXEC crudPedido(9, TO_DATE('2023-09-01', 'YYYY-MM-DD'), 9, 9, 9, 9, 9, 9, 'insert');
EXEC crudPedido(10, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 10, 10, 10, 10, 10, 10, 'insert');

-- Inserindo Itens de Pedidos
EXEC crudItemPedido(5, 10, 50, 1, 1, 'insert');
EXEC crudItemPedido(3, 15, 45, 2, 2, 'insert');
EXEC crudItemPedido(4, 20, 80, 3, 3, 'insert');
EXEC crudItemPedido(2, 25, 50, 4, 4, 'insert');
EXEC crudItemPedido(6, 18, 108, 5, 5, 'insert');
EXEC crudItemPedido(7, 22, 154, 6, 6, 'insert');
EXEC crudItemPedido(3, 30, 90, 7, 7, 'insert');
EXEC crudItemPedido(5, 12, 60, 8, 8, 'insert');
EXEC crudItemPedido(4, 18, 72, 9, 9, 'insert');
EXEC crudItemPedido(2, 15, 30, 10, 10, 'insert');

COMMIT;
