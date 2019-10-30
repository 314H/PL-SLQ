     -- Aula04

     -- Trabalhando com Datas

     SELECT * FROM DUAL

     -- SysDate retorna data/hora do Servidor
     SELECT SYSDATE FROM DUAL;

     -- Round e Trunc
     SELECT Round(45.925, 2), -- Arrendonda o número para cima 45.93
            Trunc(45.929, 2), -- Arrendonda o número para baixo 45.92
            Mod(10, 2) AS RESTO_DIVISAO,    -- Exibe o resto da divisão.
            Trunc(1.99),
            Trunc(1.99, 2)
    FROM DUAL;

    SELECT * FROM TCONTRATO;

    -- Funções de Data/Hora

    -- Exibir a data com 5 dias amais.
    SELECT DATA, SYSDATE, DATA + 5 FROM TCONTRATO;

    -- Exibir as diferennças entre as datas.
    SELECT SYSDATE - DATA AS DIF_DIAS FROM TCONTRATO;

    -- Exibir as diferennças entre as datas. Usando a função trunc para remover os minutos
    -- e exibe apenas os dias.
    SELECT Trunc(SYSDATE - DATA) AS DIAS FROM TCONTRATO;

    -- Exibir a data de hoje e acresentar horas.
    -- Exibindo a data de hoje e somando com + 2 horas.
    SELECT SYSDATE, SYSDATE + 2 / 24 AS ADD_HORAS FROM TCONTRATO;

     -- Exibir a data de hoje e acresentar minutos.
    SELECT SYSDATE, SYSDATE + 15 / 1440 AS ADD_MINUTOS FROM TCONTRATO;

    -- Exibir a data de hoje e acresentar minutos.
    SELECT SYSDATE, SYSDATE + 30 / (3600 * 24) AS ADD_SEGUNDOS FROM TCONTRATO;

    -- ===================================================================================

    -- Truncar a hora
    SELECT SYSDATE, Trunc(SYSDATE) FROM DUAL;

    -- Diferença de meses entre datas.
    SELECT Months_Between (SYSDATE, SYSDATE-90) AS DIF_MES FROM DUAL;

    -- Adicionando 5 meses a data atual
    SELECT Add_Months(SYSDATE, 5) AS ADICIONA_MES_DATA FROM DUAL;

    -- A proxima data a partir de um dia da semana.
    -- A partir de hoje quando cai a proxima QUARTA-FEIRA.
    SELECT Next_Day(SYSDATE, 'QUARTA-FEIRA') AS PROXIMA_QUARTA_DATA FROM DUAL;

    -- Ultimo dia do mes informado.
    SELECT Last_Day(SYSDATE) AS ULTIMO_DIA_MES FROM DUAL;

    -- O primeiro dia do proximo mês.
    -- Se estivemos entre o 1º e 15º dia do mes, retorna o primeiro dia do mes atual.
    -- A partir do 16º retorna o 1º dia do mes seguinte ao atual.
    SELECT Round(SYSDATE, 'MONTH') AS PRIMEIRO_DIA_PROXIMO_MES FROM DUAL;

    -- Primeiro dia do mês atual
    SELECT Trunc(SYSDATE, 'MONTH') AS PRIMEIRO_DIA_MES_CORRENTE FROM DUAL;








     COMMIT;
