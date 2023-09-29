-- Parte 1: Resposta item a)
SET SERVEROUTPUT ON

DECLARE
  v_nrsac MC_SGV_SAC.NR_SAC%type; 
  v_nrcliente MC_SGV_SAC.NR_CLIENTE%type; 
  v_cdproduto MC_SGV_SAC.CD_PRODUTO%type; 
  v_dtabertura MC_SGV_SAC.DT_ABERTURA_SAC%type; 
  v_hrabertura MC_SGV_SAC.HR_ABERTURA_SAC%type; 
  v_tpsac MC_SGV_SAC.TP_SAC%type; 
  v_dsproduto MC_PRODUTO.DS_PRODUTO%type; 
  v_vlunitario MC_PRODUTO.VL_UNITARIO%type; 
  v_vlperclucro MC_PRODUTO.VL_PERC_LUCRO%type; 
  v_nmcliente MC_CLIENTE.NM_CLIENTE%type;
  CURSOR cursor_sac IS 
    SELECT MC_SGV_SAC.NR_SAC, MC_SGV_SAC.NR_CLIENTE, MC_SGV_SAC.CD_PRODUTO, MC_SGV_SAC.DT_ABERTURA_SAC, 
        MC_SGV_SAC.HR_ABERTURA_SAC, MC_SGV_SAC.TP_SAC, MC_PRODUTO.DS_PRODUTO, MC_PRODUTO.VL_UNITARIO, MC_PRODUTO.VL_PERC_LUCRO, 
        MC_CLIENTE.NM_CLIENTE
    FROM MC_SGV_SAC 
    INNER JOIN MC_PRODUTO
    ON (MC_SGV_SAC.CD_PRODUTO = MC_PRODUTO.CD_PRODUTO)
    INNER JOIN MC_CLIENTE
    ON (MC_SGV_SAC.NR_CLIENTE = MC_CLIENTE.NR_CLIENTE);
BEGIN
    OPEN cursor_sac;
    LOOP
        FETCH cursor_sac INTO v_nrsac, v_nrcliente, v_cdproduto, v_dtabertura, v_hrabertura, v_tpsac, v_dsproduto, v_vlunitario, v_vlperclucro, v_nmcliente;
        EXIT WHEN cursor_sac%notfound;
        dbms_output.put_line('Número da ocorrência do SAC = ' || v_nrsac);
        dbms_output.put_line('Data de abertura do SAC = ' ||  v_dtabertura);
        dbms_output.put_line('Hora de abertura do SAC = ' ||  v_hrabertura);
        dbms_output.put_line('Tipo do SAC = ' || v_tpsac);
        dbms_output.put_line('Código do produto = ' ||  v_cdproduto);
        dbms_output.put_line('Nome do produto = ' || v_dsproduto);
        dbms_output.put_line('Valor unitário do produto = ' || v_vlunitario);
        dbms_output.put_line('Percentual do lucro unitário do produto = ' || v_vlperclucro);
        dbms_output.put_line('Número do Cliente  = ' || v_nrcliente);
        dbms_output.put_line('Nome do Cliente = '  || v_nmcliente);
    END LOOP;
    CLOSE cursor_sac; 
END;
/
-- Parte2: Resposta item b)
DECLARE
  v_nrsac MC_SGV_SAC.NR_SAC%type; 
  v_nrcliente MC_SGV_SAC.NR_CLIENTE%type; 
  v_cdproduto MC_SGV_SAC.CD_PRODUTO%type; 
  v_dtabertura MC_SGV_SAC.DT_ABERTURA_SAC%type; 
  v_hrabertura MC_SGV_SAC.HR_ABERTURA_SAC%type; 
  --aqui é o TP_SAC_ b1 - inserir em DS_TIPO_CLASSIFICACAO_SAC
  v_tpsac MC_SGV_SAC.TP_SAC%type; 
  --termina aqui
  v_dsproduto MC_PRODUTO.DS_PRODUTO%type; 
  v_vlunitario MC_PRODUTO.VL_UNITARIO%type; 
  v_vlperclucro MC_PRODUTO.VL_PERC_LUCRO%type; 
  v_nmcliente MC_CLIENTE.NM_CLIENTE%type;
  -- delacação variaveis de MC_SGV_OCORRENCIA_SAC
  v_nr_ocorrencia_sac_sgv MC_SGV_OCORRENCIA_SAC.NR_OCORRENCIA_SAC%type;
  v_dt_abertura_sac_sgv  MC_SGV_OCORRENCIA_SAC.DT_ABERTURA_SAC%type;
  v_hr_abertura_sac_sgv MC_SGV_OCORRENCIA_SAC.HR_ABERTURA_SAC%type;
  v_tipo_classificacao_sac_sgv MC_SGV_OCORRENCIA_SAC.DS_TIPO_CLASSIFICACAO_SAC%type;
  v_ds_indice_satisacao_atd_sac_sgv MC_SGV_OCORRENCIA_SAC.DS_INDICE_SATISFACAO_ATD_SAC%type;
  v_cd_produto_sgv MC_SGV_OCORRENCIA_SAC.CD_PRODUTO%type;
  v_ds_produto_sgv MC_SGV_OCORRENCIA_SAC.DS_PRODUTO%type;
  v_vl_unitario_protudo_sgv MC_SGV_OCORRENCIA_SAC.VL_UNITARIO_PRODUTO%type;
  v_vl_perc_lucro_sgv MC_SGV_OCORRENCIA_SAC.VL_PERC_LUCRO%type;
  v_vl_unitario_produto_sgv MC_SGV_OCORRENCIA_SAC.VL_UNITARIO_LUCRO_PRODUTO%type;
  v_sg_estado_sgv MC_SGV_OCORRENCIA_SAC.SG_ESTADO%type;
  v_nm_estado_sgv MC_SGV_OCORRENCIA_SAC.NM_ESTADO%type;
  v_nr_cliente_sgv MC_SGV_OCORRENCIA_SAC.NR_CLIENTE%type;
  v_nm_cliente_sgv MC_SGV_OCORRENCIA_SAC.NM_CLIENTE%type;
  v_vl_icms_produto_sgv MC_SGV_OCORRENCIA_SAC.VL_ICMS_PRODUTO%type;

  CURSOR cursor_ocorrencia_sac IS 
    SELECT MC_SGV_SAC.NR_SAC, 
           MC_SGV_SAC.NR_CLIENTE, 
           MC_SGV_SAC.CD_PRODUTO, 
           MC_SGV_SAC.DT_ABERTURA_SAC,
           MC_SGV_SAC.HR_ABERTURA_SAC, 
           MC_SGV_SAC.TP_SAC, 
           MC_PRODUTO.DS_PRODUTO, 
           MC_PRODUTO.VL_UNITARIO, 
           MC_PRODUTO.VL_PERC_LUCRO, 
           MC_CLIENTE.NM_CLIENTE
    FROM MC_SGV_SAC 
    INNER JOIN MC_PRODUTO ON (MC_SGV_SAC.CD_PRODUTO = MC_PRODUTO.CD_PRODUTO)
    INNER JOIN MC_CLIENTE ON (MC_SGV_SAC.NR_CLIENTE = MC_CLIENTE.NR_CLIENTE);

BEGIN
    OPEN cursor_ocorrencia_sac;
    LOOP
        FETCH cursor_ocorrencia_sac INTO v_nrsac, v_nrcliente, v_cdproduto, v_dtabertura, v_hrabertura, v_tpsac, v_dsproduto, v_vlunitario, v_vlperclucro, v_nmcliente;
        EXIT WHEN cursor_ocorrencia_sac%NOTFOUND;
        
        -- Transforma o valor de TP_SAC em DS_TIPO_CLASSIFICACAO_SAC
        IF v_tpsac = 'S' THEN
                v_tipo_classificacao_sac_sgv := 'SUGESTÃO';
        ELSIF v_tpsac = 'D' THEN
                v_tipo_classificacao_sac_sgv := 'DÚVIDA';
        ELSIF v_tpsac = 'E' THEN
                v_tipo_classificacao_sac_sgv := 'ELOGIO';
        ELSE
                v_tipo_classificacao_sac_sgv := 'CLASSIFICAÇÃO INVÁLIDA';
        END IF;
        
        -- Calcula o valor do lucro unitário sobre o produto
        v_vl_unitario_produto_sgv := (v_vlperclucro / 100) * v_vlunitario;

        -- Recupera as informações de estado
        SELECT e.SG_ESTADO, e.NM_ESTADO
        INTO v_sg_estado_sgv, v_nm_estado_sgv
        FROM MC_END_CLI ec
        INNER JOIN MC_LOGRADOURO l ON ec.CD_LOGRADOURO_CLI = l.CD_LOGRADOURO
        INNER JOIN MC_BAIRRO b ON l.CD_BAIRRO = b.CD_BAIRRO
        INNER JOIN MC_CIDADE ci ON b.CD_CIDADE = ci.CD_CIDADE
        INNER JOIN MC_ESTADO e ON ci.SG_ESTADO = e.SG_ESTADO
        WHERE ec.NR_CLIENTE = v_nrcliente;

        -- Calcula o valor médio do ICMS do estado
        SELECT pf0110.fun_mc_gera_aliquota_media_icms_estado(v_sg_estado_sgv)
        INTO v_vl_icms_produto_sgv
        FROM dual;
        
        -- Insere os dados na tabela MC_SGV_OCORRENCIA_SAC
        INSERT INTO MC_SGV_OCORRENCIA_SAC 
               (NR_OCORRENCIA_SAC,
                DT_ABERTURA_SAC,
                HR_ABERTURA_SAC,
                DS_TIPO_CLASSIFICACAO_SAC,
                DS_INDICE_SATISFACAO_ATD_SAC,
                CD_PRODUTO,
                DS_PRODUTO,
                VL_UNITARIO_PRODUTO,
                VL_PERC_LUCRO,
                VL_UNITARIO_LUCRO_PRODUTO,
                SG_ESTADO,
                NM_ESTADO,
                NR_CLIENTE,
                NM_CLIENTE,
                VL_ICMS_PRODUTO)
    
        VALUES (v_nrsac, v_dtabertura, v_hrabertura, v_tipo_classificacao_sac_sgv, v_ds_indice_satisacao_atd_sac_sgv, v_cdproduto, v_dsproduto, v_vlunitario, v_vlperclucro, v_vl_unitario_produto_sgv, v_sg_estado_sgv, v_nm_estado_sgv, v_nrcliente, v_nmcliente, v_vl_icms_produto_sgv);
    END LOOP;    
    CLOSE cursor_ocorrencia_sac; 
END;
/

-- Consulta dados inseridos na tabela MC_SGV_OCORRENCIA_SAC
SELECT * FROM MC_SGV_OCORRENCIA_SAC;

COMMIT;

/* a coluna DS_INDICE_SATISFACAO_ATD_SAC necessita de:
receber a descrição do índice de satisfação do cliente perante o chamado aberto no SAC das Melhores Compras. 
Esse conteúdo pode ser recuperado na tabela ORCL da FIAP pf0110.fun_gera_indice_sac_cli e deve ser selecionado sempre que necessário.
Não está funcionando*/