SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION VALIDAR_CEP(cep IN NUMBER) RETURN INT IS
BEGIN
  IF LENGTH(cep) = 8 THEN
    RETURN 1;
  ELSE
    RETURN 0;
  END IF;
END VALIDAR_CEP;
/

CREATE OR REPLACE PROCEDURE selectDoisPedidos
IS
  CURSOR pedidos_cursor IS
    SELECT
      p.cod_pedido AS codigo_pedido,
      p.data AS data_pedido,
      cj.cnpj AS cnpj_pessoa_juridica,
      c.nome AS nome_cliente_pessoa_juridica,
      ec.cep AS cep_cliente_pessoa_juridica,
      VALIDAR_CEP(ec.cep) AS cep_valido
    FROM
      pedido p 
      INNER JOIN cliente_jurica cj ON cj.cod_pessoa_ju = p.cliente_jurica_cod_pessoa_ju
      INNER JOIN cliente c ON c.cod_cliente = cj.cliente_cod_cliente
      INNER JOIN endereco_cliente ec ON ec.cod_endereco = c.endereco_cliente_cod_endereco
    FETCH FIRST 2 ROWS ONLY;

  v_codigo_pedido NUMBER;
  v_data_pedido DATE;
  v_cnpj_pessoa_juridica VARCHAR(255);
  v_nome_cliente_pessoa_juridica VARCHAR(255);
  v_cep_cliente_pessoa_juridica VARCHAR(255);
  v_cep_valido INT;

BEGIN
  OPEN pedidos_cursor;
  LOOP
    FETCH pedidos_cursor INTO v_codigo_pedido, v_data_pedido, v_cnpj_pessoa_juridica, v_nome_cliente_pessoa_juridica, v_cep_cliente_pessoa_juridica, v_cep_valido; 
    EXIT WHEN pedidos_cursor%NOTFOUND;

    dbms_output.put_line('Código do Pedido: ' || v_codigo_pedido);
    dbms_output.put_line('Data Pedido: ' || v_data_pedido);
    dbms_output.put_line('CNPJ pessoa jurídica: ' || v_cnpj_pessoa_juridica);
    dbms_output.put_line('Nome cliente pessoa jurídica: ' || v_nome_cliente_pessoa_juridica);
    dbms_output.put_line('CEP cliente pessoa jurídica: ' || v_cep_cliente_pessoa_juridica);
    IF v_cep_valido = 1 THEN
        dbms_output.put_line('CEP válido');
    ELSE 
        dbms_output.put_line('CEP inválido!');
    END IF;
    dbms_output.put_line('---');
    
  END LOOP;
  CLOSE pedidos_cursor;

  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Nenhum dado encontrado!');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro: ' || SQLERRM);

END selectDoisPedidos;
/


BEGIN
  selectDoisPedidos;
END;
/