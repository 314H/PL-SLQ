
      -- Aula 03

      UPDATE TCONTRATO SET
            DESCONTO = NULL
            WHERE COD_CONTRATO = 4;

      UPDATE TCONTRATO SET
      DESCONTO = NULL
      WHERE COD_CONTRATO = 3;

       UPDATE TCONTRATO SET
            DESCONTO = 11
            WHERE COD_CONTRATO = 2;


      SELECT * FROM TCONTRATO


      -- Contar quantos registros há na tabela TCONTRATO, incluindo NULL.
      SELECT Count(*) AS QTDE_REGISTROS
      FROM TCONTRATO;

      -- COUNT -> IGNOAR NULOS
      -- Contar quantas registros há na tabela TCONTRATO, pórem ignorando NULL.
      SELECT Count(DESCONTO)
      FROM TCONTRATO;

      -- Quantidade de registros com o estado informado.
      -- Estados repetidos serão EXIBIDOS.
      SELECT Count(ESTADO) FROM TALUNO;

      -- Quatidade de estados diferentes.
      -- Caso exista estados repitidos apenas um será exibido.
      SELECT Count(DISTINCT(ESTADO)) FROM TALUNO

      COMMIT;

      -- Quantidade de registros por estado.
      SELECT ESTADO, Count(*)
      FROM TALUNO
      GROUP BY ESTADO;

      -- Calculos na tabela TCONTRATO.
      SELECT Sum(DESCONTO) AS Soma_Desconto,
                Avg(DESCONTO) AS Media,
                Count(DESCONTO) AS Desconto,
                Round(Avg(Nvl(DESCONTO,0)), 2) AS Desconto_Arredondado
      FROM TCONTRATO;

      SELECT * FROM TCONTRATO;

      -- Total de contrato por estado.
      SELECT ALU.Estado,
             Sum(CON.TOTAL) TOTAL, Count(*) QTDE

      FROM TALUNO ALU, TCONTRATO CON
      WHERE ALU.COD_ALUNO = CON.COD_ALUNO
      GROUP BY ALU.ESTADO
      ORDER BY ALU.ESTADO

      -- Having - filtro coluna com funcao de grupo.
      SELECT COD_ALUNO, Round(Avg(TOTAL), 2) MEDIA
      FROM TCONTRATO
      WHERE COD_ALUNO > 0
      HAVING Avg(Total) > 500
      GROUP BY cod_aluno
      ORDER BY cod_aluno

      -- Media mais alta por aluno.
      SELECT Max(Avg(TOTAL))
      FROM TCONTRATO
      GROUP BY COD_ALUNO;

      -- Soma dos salario por estado.
      SELECT ESTADO, Sum(SALARIO) AS TOTAL
      FROM TALUNO
      GROUP BY ESTADO
      ORDER BY 2 DESC

      COMMIT;

















