
    -- Sub-Consultas

    -- 1º será realizada uma consulta onde o COD_CURSO = 1
    -- Depois será realizada outra consulta onde o total seja maior que a
    -- o valor da primeira consulta.
    SELECT COD_CONTRATO, DATA, TOTAL
    FROM TCONTRATO
    WHERE TOTAL >
    ( SELECT VALOR FROM TCURSO
    WHERE COD_CURSO = 1
    );

    -- Errado (Só pode retornar uma
    -- linha na subconsulta.
    SELECT COD_CONTRATO, DATA, TOTAL
    FROM TCONTRATO
    WHERE TOTAL >=
    ( SELECT VALOR FROM TCURSO
      WHERE VALOR > 500
    );

    SELECT * FROM TALUNO;

    -- Todos os alunos da mesma cidade do aluno 1
    -- Menos o aluno 1
    SELECT COD_ALUNO, NOME, CIDADE
    FROM TALUNO
    WHERE CIDADE = ( SELECT CIDADE FROM TALUNO
                      WHERE COD_ALUNO = 1 )
    AND COD_ALUNO <> 1;

    -- Todos os alunos da mesma cidade e
    -- estado do aluno 1
    -- menos o aluno 1
    SELECT COD_ALUNO, NOME, CIDADE, ESTADO
    FROM TALUNO
    WHERE (CIDADE, ESTADO) =
              (SELECT CIDADE, ESTADO FROM TALUNO
                WHERE COD_ALUNO = 1 )
    AND COD_ALUNO <> 1;

    -- Soma todos os itens, e mostra somente cujo o
    -- valor minimo seja maior que o valor medio.
    SELECT COD_CURSO, Min(VALOR), Sum(VALOR),
        Count(*) QTDE
    FROM TITEM
    WHERE COD_CURSO > 0
    GROUP BY COD_CURSO
    HAVING Min(VALOR) >=
            (SELECT Avg(VALOR) FROM TCURSO)
    ORDER BY COD_CURSO;







