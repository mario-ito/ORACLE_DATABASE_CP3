-- Selecionando Pedidos
CREATE OR REPLACE PROCEDURE selectDoisPedidos
IS
  CURSOR orders_cursor IS
    SELECT
      p.cod_pedido AS codigo_pedido,
      data AS order_date,
      c.nome AS nome_cliente,
      pr.descricao AS descricao_produto,
      ip.quantidade,
      ip.valor_unitario,
      calcular_valor_total(ip.quantidade, ip.valor_unitario) AS valor_total
    FROM
      pedido p
      JOIN cliente c ON p.cliente_fisico_cod_cli_fisico = c.cod_cliente
      JOIN item_pedido ip ON p.cod_pedido = ip.pedido_cod_pedido
      JOIN produto pr ON ip.produto_cod_produto = pr.cod_produto
    FETCH FIRST 2 ROWS ONL;

  v_cod_pedido NUMBER;
  v_nome_cliente VARCHAR2(50);
  v_descricao_produto VARCHAR2(30);
  v_quantidade NUMBER;
  v_valor_unitario NUMBER;
  v_valor_total NUMBER;
BEGIN
  OPEN orders_cursor;
  LOOP
    FETCH orders_cursor INTO v_cod_pedido, v_nome_cliente, v_descricao_produto, v_quantidade, v_valor_unitario, v_valor_total;
    EXIT WHEN orders_cursor%NOTFOUND;

    -- Imprimir informações do pedido
    DBMS_OUTPUT.PUT_LINE('Código do Pedido: ' || v_cod_pedido);
    DBMS_OUTPUT.PUT_LINE('Cliente: ' || v_nome_cliente);
    DBMS_OUTPUT.PUT_LINE('Produto: ' || v_descricao_produto);
    DBMS_OUTPUT.PUT_LINE('Quantidade: ' || v_quantidade);
    DBMS_OUTPUT.PUT_LINE('Valor Unitário: ' || v_valor_unitario);
    DBMS_OUTPUT.PUT_LINE('Valor Total: ' || v_valor_total);
    DBMS_OUTPUT.PUT_LINE('---------------------');
  END LOOP;
  CLOSE c_pedidos;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Nenhum pedido encontrado.');
  WHEN OTHERS THEN
    -- Tratamento de erro customizado para a procedure
    DBMS_OUTPUT.PUT_LINE('Erro ao imprimir pedidos: ' || SQLERRM);
END procedure_imprimir_dois_pedidos;
/
SET SERVEROUTPUT ON;

BEGIN
  procedure_imprimir_dois_pedidos;
END;
/

