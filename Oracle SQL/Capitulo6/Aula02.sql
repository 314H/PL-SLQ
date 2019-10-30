
    -- Aula 02 - Funcções de grupo.

    SELECT Count(*) AS QTDE_REGISTROS,
            Avg(TOTAL) AS MEDIA,
            Round(Avg(TOTAL), 2) AS MEDIA,
            Max(TOTAL) AS MAXIMO,
            Min(TOTAL) AS MINIMO,
            Sum(TOTAL) AS SOMA,
            Max(DATA) AS DATA_MAIOR,
            Min(DATA) AS DATA_MENOR
    FROM TCONTRATO;

    -- Proximo código sequenciar tabela.
    SELECT Max(COD_CONTRATO) + 1 AS PROXIMO_CODIGO
    FROM TCONTRATO;

    SELECT * FROM TCONTRATO;

    -- TOTAL DE CONTRATOS POR ALUNO
    SELECT COD_ALUNO,
          Count(*) AS QTDE_CONTRATO,
          Sum(TOTAL) AS VALOR_TOTAL
    FROM TCONTRATO
    GROUP BY COD_ALUNO

    -- TOTAL DE CONTRATO POR DATA. USAMOS O Trunc PARA REMOVER O HORARIO DA DATA.
    -- USAMOS O TO_CHAR PARA FORMATAR A DATA NO PADRÃO DD/MM/YYYY.
    SELECT TO_CHAR(Trunc(DATA),'DD/MM/YYYY') AS DATA,
            Sum(TOTAL) AS SOMA,
            Avg(TOTAL) AS MEDIA,
            Count(*) AS QTDE
    FROM TCONTRATO
    GROUP BY Trunc(DATA)
    ORDER BY DATA DESC

