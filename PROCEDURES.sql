/* Procedure para Pais */
CREATE OR REPLACE PROCEDURE crudPais (
    p_cod_pais IN NUMBER,
    p_nome IN VARCHAR2,
    metodo IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(metodo) = 'insert' THEN
            INSERT INTO pais (cod_pais, nome)
            VALUES (p_cod_pais, p_nome);
        WHEN LOWER(metodo) = 'update' THEN
            UPDATE pais SET 
            cod_pais = p_cod_pais, 
            nome = p_nome;
        WHEN LOWER(metodo) = 'delete' THEN
            DELETE FROM pais 
            WHERE cod_pais = p_cod_pais;
        END CASE;

        COMMIT;
END crudPais;
/

/* PROCEDURE PARA ESTADO */
CREATE OR REPLACE PROCEDURE crudEstado (
    p_cod_estado IN NUMBER,
    p_nome_estado IN VARCHAR2,
    p_pais_cod_pais IN NUMBER,
    p_metodo IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO estado (cod_estado, nome_estado, pais_cod_pais)
            VALUES (p_cod_estado, p_nome_estado, p_pais_cod_pais);
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE estado SET 
            nome_estado = p_nome_estado, 
            pais_cod_pais = p_pais_cod_pais
            WHERE cod_estado = p_cod_estado;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM estado 
            WHERE cod_estado = p_cod_estado;
    END CASE;

    COMMIT;
END crudEstado;
/

/* PROCEDURE PARA CIDADE */
CREATE OR REPLACE PROCEDURE crudCidade (
    p_cod_cidade IN NUMBER,
    p_nome_cidade IN VARCHAR2,
    p_estado_cod_estado IN NUMBER,
    p_metodo IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO cidade (cod_cidade, nome, estado_cod_estado)
            VALUES (p_cod_cidade, p_nome_cidade, p_estado_cod_estado);
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE cidade SET 
            nome = p_nome_cidade, 
            estado_cod_estado = p_estado_cod_estado
            WHERE cod_cidade = p_cod_cidade;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM cidade 
            WHERE cod_cidade = p_cod_cidade;
    END CASE;

    COMMIT;
END crudCidade;
/

/* PROCEDURE PARA BAIRRO */
CREATE OR REPLACE PROCEDURE crudBairro (
    p_cod_bairro IN NUMBER,
    p_nome_bairro IN VARCHAR2,
    p_cidade_cod_cidade IN NUMBER,
    p_metodo IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO bairro (cod_bairro, nome, cidade_cod_cidade)
            VALUES (p_cod_bairro, p_nome_bairro, p_cidade_cod_cidade);
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE bairro SET 
            nome = p_nome_bairro, 
            cidade_cod_cidade = p_cidade_cod_cidade
            WHERE cod_bairro = p_cod_bairro;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM bairro 
            WHERE cod_bairro = p_cod_bairro;
    END CASE;

    COMMIT;
END crudBairro;
/

/* PROCEDURE PARA ENDEREÇO CLIENTE */
CREATE OR REPLACE PROCEDURE crudEnderecoCliente (
    p_cod_endereco IN NUMBER,
    p_numero IN VARCHAR2,
    p_cep IN VARCHAR2,
    p_referencia IN VARCHAR2,
    p_bairro_cod_bairro IN NUMBER,
    p_metodo IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO endereco_cliente (cod_endereco, numero, cep, referencia, bairro_cod_bairro)
            VALUES (p_cod_endereco, p_numero, p_cep, p_referencia, p_bairro_cod_bairro);
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE endereco_cliente SET 
            numero = p_numero, 
            cep = p_cep,
            referencia = p_referencia,
            bairro_cod_bairro = p_bairro_cod_bairro
            WHERE cod_endereco = p_cod_endereco;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM endereco_cliente 
            WHERE cod_endereco = p_cod_endereco;
    END CASE;

    COMMIT;
END crudEnderecoCliente;
/

/* PROCEDURE PARA CLIENTE */
CREATE OR REPLACE PROCEDURE crudCliente (
    p_cod_cliente IN NUMBER,
    p_nome_cliente IN VARCHAR2,
    p_endereco_cliente_cod_endereco IN NUMBER,
    p_metodo IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO cliente (cod_cliente, nome, endereco_cliente_cod_endereco)
            VALUES (p_cod_cliente, p_nome_cliente, p_endereco_cliente_cod_endereco);
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE cliente SET 
            nome = p_nome_cliente, 
            endereco_cliente_cod_endereco = p_endereco_cliente_cod_endereco
            WHERE cod_cliente = p_cod_cliente;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM cliente 
            WHERE cod_cliente = p_cod_cliente;
    END CASE;

    COMMIT;
END crudCliente;
/

/* PROCEDURE PARA GENERO */
CREATE OR REPLACE PROCEDURE crudGenero (
    p_cod_genero IN NUMBER,
    p_descricao IN VARCHAR2,
    p_metodo IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO genero (cod_genero, descricao)
            VALUES (p_cod_genero, p_descricao);
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE genero SET 
            descricao = p_descricao
            WHERE cod_genero = p_cod_genero;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM genero 
            WHERE cod_genero = p_cod_genero;
    END CASE;

    COMMIT;
END crudGenero;
/

/* PROCEDURE PARA CLIENTE_FISICO */
CREATE OR REPLACE PROCEDURE crudClienteFisico (
    p_cod_cli_fisico IN NUMBER,
    p_cpf IN NUMBER,
    p_cliente_cod_cliente IN NUMBER,
    p_genero_cod_genero IN NUMBER,
    p_metodo IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO cliente_fisico (cod_cli_fisico, cpf, cliente_cod_cliente, genero_cod_genero)
            VALUES (p_cod_cli_fisico, p_cpf, p_cliente_cod_cliente, p_genero_cod_genero);
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE cliente_fisico SET 
            cpf = p_cpf, 
            cliente_cod_cliente = p_cliente_cod_cliente,
            genero_cod_genero = p_genero_cod_genero
            WHERE cod_cli_fisico = p_cod_cli_fisico;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM cliente_fisico 
            WHERE cod_cli_fisico = p_cod_cli_fisico;
    END CASE;

    COMMIT;
END crudClienteFisico;
/

/* PROCEDURE PARA CLIENTE_JURICA */
CREATE OR REPLACE PROCEDURE crudClienteJurica (
    p_cod_pessoa_ju IN NUMBER,
    p_cnpj IN NUMBER,
    p_ie IN VARCHAR2,
    p_cliente_cod_cliente IN NUMBER,
    p_metodo IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO cliente_jurica (cod_pessoa_ju, cnpj, ie, cliente_cod_cliente)
            VALUES (p_cod_pessoa_ju, p_cnpj, p_ie, p_cliente_cod_cliente);
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE cliente_jurica SET 
            cnpj = p_cnpj, 
            ie = p_ie,
            cliente_cod_cliente = p_cliente_cod_cliente
            WHERE cod_pessoa_ju = p_cod_pessoa_ju;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM cliente_jurica 
            WHERE cod_pessoa_ju = p_cod_pessoa_ju;
    END CASE;

    COMMIT;
END crudClienteJurica;
/

CREATE OR REPLACE PROCEDURE crudItemPedido (
    p_quantidade          IN NUMBER,
    p_valor_unitario      IN NUMBER,
    p_valor_total         IN NUMBER,
    p_pedido_cod_pedido   IN NUMBER,
    p_produto_cod_produto IN NUMBER,
    p_metodo              IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO item_pedido (
                quantidade,
                valor_unitario,
                valor_total,
                pedido_cod_pedido,
                produto_cod_produto
            ) VALUES (
                p_quantidade,
                p_valor_unitario,
                p_valor_total,
                p_pedido_cod_pedido,
                p_produto_cod_produto
            );
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE item_pedido
            SET 
                quantidade = p_quantidade,
                valor_unitario = p_valor_unitario,
                valor_total = p_valor_total
            WHERE
                pedido_cod_pedido = p_pedido_cod_pedido
                AND produto_cod_produto = p_produto_cod_produto;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM item_pedido 
            WHERE 
                pedido_cod_pedido = p_pedido_cod_pedido
                AND produto_cod_produto = p_produto_cod_produto;
    END CASE;

    COMMIT;
END crudItemPedido;
/


CREATE OR REPLACE PROCEDURE crudFuncionario (
    p_cod_funcionario             IN NUMBER,
    p_nome                        IN VARCHAR2,
    p_data_cadastro               IN DATE,
    p_cargo_cod_cargo             IN NUMBER,
    p_funcionario_cod_funcionario IN NUMBER,
    p_metodo                      IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO funcionario (
                cod_funcionario,
                nome,
                data_cadastro,
                cargo_cod_cargo,
                funcionario_cod_funcionario
            ) VALUES (
                p_cod_funcionario,
                p_nome,
                p_data_cadastro,
                p_cargo_cod_cargo,
                p_funcionario_cod_funcionario
            );
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE funcionario
            SET 
                nome = p_nome,
                data_cadastro = p_data_cadastro,
                cargo_cod_cargo = p_cargo_cod_cargo,
                funcionario_cod_funcionario = p_funcionario_cod_funcionario
            WHERE
                cod_funcionario = p_cod_funcionario;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM funcionario 
            WHERE 
                cod_funcionario = p_cod_funcionario;
    END CASE;

    COMMIT;
END crudFuncionario;
/

CREATE OR REPLACE PROCEDURE crudCargo (
    p_cod_cargo IN NUMBER,
    p_nome      IN VARCHAR2,
    p_metodo    IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO cargo (cod_cargo, nome)
            VALUES (p_cod_cargo, p_nome);
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE cargo
            SET nome = p_nome
            WHERE cod_cargo = p_cod_cargo;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM cargo 
            WHERE cod_cargo = p_cod_cargo;
    END CASE;

    COMMIT;
END crudCargo;
/

CREATE OR REPLACE PROCEDURE crudPedido (
    p_cod_pedido                         IN NUMBER,
    p_data                               IN DATE,
    p_cliente_fisico_cod_cli_fisico      IN NUMBER,
    p_cliente_fisico_cliente_cod_cliente IN NUMBER,
    p_cliente_fisico_genero_cod_genero   IN NUMBER,
    p_funcionario_cod_funcionario        IN NUMBER,
    p_cliente_jurica_cod_pessoa_ju       IN NUMBER,
    p_funcionario_cod_funcionario2       IN NUMBER,
    p_metodo                             IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO pedido (
                cod_pedido,
                data,
                cliente_fisico_cod_cli_fisico,
                cliente_fisico_cliente_cod_cliente,
                cliente_fisico_genero_cod_genero,
                funcionario_cod_funcionario,
                cliente_jurica_cod_pessoa_ju,
                funcionario_cod_funcionario2
            ) VALUES (
                p_cod_pedido,
                p_data,
                p_cliente_fisico_cod_cli_fisico,
                p_cliente_fisico_cliente_cod_cliente,
                p_cliente_fisico_genero_cod_genero,
                p_funcionario_cod_funcionario,
                p_cliente_jurica_cod_pessoa_ju,
                p_funcionario_cod_funcionario2
            );
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE pedido
            SET 
                data = p_data,
                cliente_fisico_cod_cli_fisico = p_cliente_fisico_cod_cli_fisico,
                cliente_fisico_cliente_cod_cliente = p_cliente_fisico_cliente_cod_cliente,
                cliente_fisico_genero_cod_genero = p_cliente_fisico_genero_cod_genero,
                funcionario_cod_funcionario = p_funcionario_cod_funcionario,
                cliente_jurica_cod_pessoa_ju = p_cliente_jurica_cod_pessoa_ju,
                funcionario_cod_funcionario2 = p_funcionario_cod_funcionario2
            WHERE cod_pedido = p_cod_pedido;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM pedido 
            WHERE cod_pedido = p_cod_pedido;
    END CASE;

    COMMIT;
END crudPedido;
/

CREATE OR REPLACE PROCEDURE crudProduto (
    p_cod_produto   IN NUMBER,
    p_descricao     IN VARCHAR2,
    p_tipo_cod_tipo IN NUMBER,
    p_metodo        IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO produto (
                cod_produto,
                descricao,
                tipo_cod_tipo
            ) VALUES (
                p_cod_produto,
                p_descricao,
                p_tipo_cod_tipo
            );
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE produto
            SET 
                descricao = p_descricao,
                tipo_cod_tipo = p_tipo_cod_tipo
            WHERE cod_produto = p_cod_produto;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM produto 
            WHERE cod_produto = p_cod_produto;
    END CASE;

    COMMIT;
END crudProduto;
/

CREATE OR REPLACE PROCEDURE crudTipo (
    p_cod_tipo  IN NUMBER,
    p_descricao IN VARCHAR2,
    p_metodo    IN VARCHAR2
) AS
BEGIN
    CASE 
        WHEN LOWER(p_metodo) = 'insert' THEN
            INSERT INTO tipo (
                cod_tipo,
                descricao
            ) VALUES (
                p_cod_tipo,
                p_descricao
            );
        WHEN LOWER(p_metodo) = 'update' THEN
            UPDATE tipo
            SET 
                descricao = p_descricao
            WHERE cod_tipo = p_cod_tipo;
        WHEN LOWER(p_metodo) = 'delete' THEN
            DELETE FROM tipo 
            WHERE cod_tipo = p_cod_tipo;
    END CASE;

    COMMIT;
END crudTipo;
/
