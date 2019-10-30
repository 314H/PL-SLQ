 -- Aula03

    -- Aplicando a fun��o Lower durante a consulta. MARCIO passa a ser marcio.
    -- assim evita o rsico da consulta n�o retorna o resultado.
    SELECT * FROM TALUNO
    WHERE Lower(NOME) = 'marcio'

    -- Aplicando a fun��o Upper durante a consulta. marcio passa a ser MARCIO
    -- assim evita o rsico da consulta n�o retorna o resultado.
    SELECT * FROM TALUNO
    WHERE Upper(NOME) = 'MARCIO';

    -- Retornar todos os alunos onde as tr�s primeiras letras sejam CAN
    -- Upper retorna todos os nomes em maiusculo.
    SELECT * FROM TALUNO
    WHERE Upper(SubStr(CIDADE,1,3)) = 'CAN';

    UPDATE TALUNO SET
    SALARIO = 633.47
    WHERE COD_ALUNO = 1;

    SELECT
      SALARIO,
      REPLACE(SALARIO, ',', ''),
      RPad(salario, 10, '0'),     --Zeros a direita at� 10 casas
      LPad(salario, 10, '0'),     --Zeros a esquerda at� 10 casas
      LPad(REPLACE(salario, ',',''), 10, '0')
    FROM TALUNO;




  COMMIT;





