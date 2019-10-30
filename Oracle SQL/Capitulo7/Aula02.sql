
    -- Aula 02
    -- Sub-Consultas

    -- Soma o total de contrato por aluno e mostra
    -- soment cijo o menor contrato seja mnaior que
    -- o valor medio de curso.
    SELECT COD_ALUNO, Min(TOTAL), Sum(TOTAL)
    FROM TCONTRATO
    GROUP BY COD_ALUNO
    HAVING Min(TOTAL) >
        (SELECT Avg(VALOR) FROM TCURSO);

    -- Todos os ncursos que est�o na tabela de
    -- Item (Vendidos)
    SELECT COD_CURSO, NOME, VALOR
    FROM TCURSO
    WHERE COD_CURSO IN (SELECT COD_CURSO FROM TITEM)

    -- Todos os Cursos que n�o est�o na tabela de Item
    -- (N�o vendidos)
    SELECT COD_CURSO, NOME, VALOR
    FROM TCURSO
    WHERE COD_CURSO NOT IN (SELECT COD_CURSO FROM TITEM)
    ORDER BY NOME;


    -- C�digo equivamente a subselect
    -- (se os valores s�o conhecidos)
    -- Op��o 1
    SELECT COD_CURSO, NOME, VALOR
    FROM TCURSO WHERE COD_CURSO IN (1, 2, 3, 4);

    -- C�digo equivamente a subselect
    -- (se os valores s�o conhecidos)
    -- Op��o 2
    SELECT COD_CURSO, NOME, VALOR
    FROM TCURSO
    WHERE COD_CURSO = 1
    OR COD_CURSO = 2
    OR COD_CURSO = 3
    OR COD_CURSO = 4;

    -- Todos cursos que foram vendidos
    -- pelo valor padr�o.
    SELECT * FROM TITEM
    WHERE (COD_CURSO, VALOR) IN
          (SELECT COD_CURSO, VALOR FROM TCURSO)


    -- SubConsulta na clausula FROM
    SELECT ITE.COD_CONTRATO, ITE.VALOR,
            ITE.COD_CURSO,
            CUR.COD_CURSO, CUR.VALOR
    FROM TITEM ITE,
          ( SELECT COD_CURSO, VALOR
            FROM TCURSO WHERE VALOR > 500 )  CUR

    WHERE CUR.COD_CURSO = ITE.COD_CURSO

    COMMIT;





