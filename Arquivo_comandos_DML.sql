-- Comandos DML para popular a tabela MC_SGV_SAC;
INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 1, 11, 14, 'Bom dia! Vocês poderiam colocar mais fotos do produto no site.', TO_DATE ('07/04/2023', 'DD/MM/YYYY'), 11,'S','F');

UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('02/05/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 15, 
       DS_DETALHADA_RETORNO_SAC = 'Boa tarde! Muito obrigado pelo seu feedback. Precisando realizar novas compras, é só contar com a gente ', 
       NR_INDICE_SATISFACAO = 10,
       NR_TEMPO_TOTAL_SAC = 20
WHERE NR_SAC = 2;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 2, 16, 15, 'Olá, o produto veio com produto veio como defeito. Como faço para trocar o produto?', TO_DATE ('16/05/2023', 'DD/MM/YYYY'), 10,'D','E');

UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('12/05/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 12, 
       DS_DETALHADA_RETORNO_SAC = 'Olá, boa tarde! Para o modelo de celular comprado, o carregador e o fone precisam ser comprados separadamente pois a fabricante não fornece junto com o aparelho', 
       NR_INDICE_SATISFACAO = 4,
       NR_TEMPO_TOTAL_SAC = 20
WHERE NR_SAC = 3;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 3, 18, 14, 'Meu produto foi entregue super rápido e ainda ganhei um brinde. Adorei, irei comprar mais vezes com certeza, o atendimento é ótimo', TO_DATE ('26/04/2023', 'DD/MM/YYYY'), 19,'E','F');

UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('10/04/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 09, 
       DS_DETALHADA_RETORNO_SAC = 'Olá, bom dia! Muito obrigado pela sugestão. Futuramente, teremos novidades no nosso marketplace e atualização de diversos anúncios',
       NR_INDICE_SATISFACAO = 9,
       NR_TEMPO_TOTAL_SAC = 20
WHERE NR_SAC = 4;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 4, 5, 15, 'Comprei um Iphone no site de vocês e alguns itens vieram faltando na caixa do produto. Não em enviaram o fone e o carregador', TO_DATE ('10/05/2023', 'DD/MM/YYYY'), 16,'D','X');

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 6, 1, 14, 'O produto é muito bonito e superou minhas expectativas', TO_DATE ('30/04/2023', 'DD/MM/YYYY'), 12,'E','F');

UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('30/04/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 12, 
       DS_DETALHADA_RETORNO_SAC = 'Ficamos muito felizes com a sua opinião!', 
       NR_INDICE_SATISFACAO = 10,
       NR_TEMPO_TOTAL_SAC = 20
WHERE NR_SAC = 6;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 7, 2, 14, 'preciso de ajuda com o manual do produto, não estou sabendo ligar', TO_DATE ('20/05/2023', 'DD/MM/YYYY'), 16,'D','F');

UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('21/05/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 17, 
       DS_DETALHADA_RETORNO_SAC = 'Um técnico entrou em contato e o cliente foi atendido com sucesso', 
       NR_INDICE_SATISFACAO = 8,
       NR_TEMPO_TOTAL_SAC = 8
WHERE NR_SAC = 7;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 8, 17, 15, 'Comprei recentemente um notebook no site do vocês e gostaria de saber como emitir a segunda via da nota fiscal do produto', TO_DATE ('29/03/2023', 'DD/MM/YYYY'), 14,'D','E');

UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('30/03/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 10, 
       DS_DETALHADA_RETORNO_SAC = 'A segunda via da sua nota fiscal foi encaminhada por e-mail', 
       NR_INDICE_SATISFACAO = 9,
       NR_TEMPO_TOTAL_SAC = 20
WHERE NR_SAC = 8;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 9, 3, 15, 'Vocês deveriam enviar dentro de embalagem mais resistente, pois rasgou quando chegou', TO_DATE ('21/05/2023', 'DD/MM/YYYY'), 15,'S','F');

UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('21/05/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 18, 
       DS_DETALHADA_RETORNO_SAC = 'A embalagem será reforçada na próxima vez', 
       NR_INDICE_SATISFACAO = 5,
       NR_TEMPO_TOTAL_SAC = 5
WHERE NR_SAC = 9;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 10, 4, 14, 'muito bem feito, as peças são belíssimas!', TO_DATE ('19/05/2023', 'DD/MM/YYYY'), 15,'E','F');

UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('19/05/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 16, 
       DS_DETALHADA_RETORNO_SAC = 'Ficamos felizes que gostou!', 
       NR_INDICE_SATISFACAO = 10,
       NR_TEMPO_TOTAL_SAC = 1
WHERE NR_SAC = 10;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 11, 4, 14, 'meu pai amou o quebra-cabeça! Vou comprar todos agora!', TO_DATE ('19/05/2023', 'DD/MM/YYYY'), 10,'E','F');

UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('19/05/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 11, 
       DS_DETALHADA_RETORNO_SAC = 'Ficamos felizes que gostou!', 
       NR_INDICE_SATISFACAO = 10,
       NR_TEMPO_TOTAL_SAC = 1
WHERE NR_SAC = 11;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 12, 9, 14, 'Olá, para o produto, vocês poderiam fazer um vídeo do produto em uso. Pelas fotos, achei que o produto fosse maior.', TO_DATE ('18/05/2023', 'DD/MM/YYYY'), 15,'S','E');

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 13, 19, 15, 'Os recursos de smart TV, como aplicativos ou streaming, nao estao funcionando corretamente.', TO_DATE ('15/05/2023', 'DD/MM/YYYY'), 9,'D','X');
UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('15/05/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 9, 
       DS_DETALHADA_RETORNO_SAC = 'Enviaremos um tecnico para que possa haver o concerto do produto', 
       NR_INDICE_SATISFACAO = 8,
       NR_TEMPO_TOTAL_SAC = 1
WHERE NR_SAC = 13;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 14, 6, 15, 'O Smartwatch não está sincronizando corretamente com o meu smartphone, mesmo apos varias tentativas. Alem disso, a bateria esta se esgotando rapidamente.', TO_DATE ('15/05/2023', 'DD/MM/YYYY'), 9,'D','E');
UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('15/05/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 10, 
       DS_DETALHADA_RETORNO_SAC = 'Entendo sua frustração. Para resolver essas questões, vou verificar a disponibilidade para a troca do produto.', 
       NR_INDICE_SATISFACAO = 8,
       NR_TEMPO_TOTAL_SAC = 1
WHERE NR_SAC = 14;

INSERT INTO MC_SGV_SAC
(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES
(SQ_MC_SGV_SAC.NEXTVAL, 15, 19, 15, 'Esta ração é de péssima qualidade, meu cachorro está passando mal', TO_DATE ('15/05/2023', 'DD/MM/YYYY'), 11,'D','E');
UPDATE MC_SGV_SAC
   SET DT_ATENDIMENTO = TO_DATE ('15/05/2023','DD/MM/YYYY'), 
       HR_ATENDIMENTO_SAC = 12, 
       DS_DETALHADA_RETORNO_SAC = 'Entendo sua frustração. Para resolver essas questões, vou verificar a disponibilidade para a troca do produto.', 
       NR_INDICE_SATISFACAO = 6,
       NR_TEMPO_TOTAL_SAC = 1
WHERE NR_SAC = 15;

-- Confirma as transações pendentes
COMMIT;

-- verifica os dados na tabela
select * from MC_SGV_SAC;