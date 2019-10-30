
-- F5 para Executar
-- F12 encima do nome de uma tabela para exibir as propriedades.

  SELECT COD_ALUNO, NOME, CIDADE
  FROM TALUNO;

  SELECT COD_ALUNO AS CODIGO, NOME "Nome DO Aluno"
  FROM TALUNO;

-- distinct retira linhas duplicadas
-- todas colunas tem que ser iguai.

-- Sem distinct. Linhas iguais ser�o repetidas.
SELECT CIDADE FROM TALUNO;

-- Com distict. Elimina linhas duplicadas, exibe apenas uma.
SELECT DISTINCT CIDADE FROM TALUNO;

-- Ordenando a consulta.
SELECT DISTINCT CIDADE, COD_ALUNO
FROM TALUNO
ORDER BY CIDADE;

-- Realizando c�lculo
SELECT NOME AS CURSO,
        VALOR,
        VALOR/CARGA_HORARIA,
        Round(VALOR/CARGA_HORARIA, 2) AS VALOR_HORA
FROM TCURSO
ORDER BY VALOR_HORA;

-- Usando apelidos
SELECT COD_ALUNO AS "C�digo",
        NOME AS "Nome do Aluno"
FROM TALUNO;

SELECT * FROM TCONTRATO;

-- Alterando o desconto para NULL onde o COD_CONTRATO = 4
 UPDATE TCONTRATO SET
 DESCONTO = NULL
 WHERE COD_CONTRATO = 0;

 -- Calculo com coluna = NULL
 -- RESULTADO = NULL
 SELECT COD_CONTRATO,
        TOTAL,
        DESCONTO,
        TOTAL + DESCONTO AS "Desconto"
FROM TCONTRATO;

-- Usando Nvl para tratar colunas NULL.
SELECT COD_CONTRATO,
        DESCONTO,
        Nvl(DESCONTO, 0),     -- Atribuindo 0 ao valor NULL.
        TOTAL,
        TOTAL + NvL(DESCONTO, 0) AS TOTAL_MAIS_DESCONTO
FROM TCONTRATO;

-- Concatena��o.
SELECT COD_ALUNO || ' - ' || NOME || ' // ' || CIDADE AS ALUNO
FROM TALUNO
ORDER BY COD_ALUNO;


-- Aplicar as a��es.
COMMIT;












