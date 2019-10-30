 -- Aula03

    -- Aplicando a função Lower durante a consulta. MARCIO passa a ser marcio.
    -- assim evita o rsico da consulta não retorna o resultado.
    SELECT * FROM TALUNO
    WHERE Lower(NOME) = 'marcio'

    -- Aplicando a função Upper durante a consulta. marcio passa a ser MARCIO
    -- assim evita o rsico da consulta não retorna o resultado.
    SELECT * FROM TALUNO
    WHERE Upper(NOME) = 'MARCIO';

    -- Retornar todos os alunos onde as três primeiras letras sejam CAN
    -- Upper retorna todos os nomes em maiusculo.
    SELECT * FROM TALUNO
    WHERE Upper(SubStr(CIDADE,1,3)) = 'CAN';

    UPDATE TALUNO SET
    SALARIO = 633.47
    WHERE COD_ALUNO = 1;

    SELECT
      SALARIO,
      REPLACE(SALARIO, ',', ''),
      RPad(salario, 10, '0'),     --Zeros a direita até 10 casas
      LPad(salario, 10, '0'),     --Zeros a esquerda até 10 casas
      LPad(REPLACE(salario, ',',''), 10, '0')
    FROM TALUNO;




  COMMIT;





