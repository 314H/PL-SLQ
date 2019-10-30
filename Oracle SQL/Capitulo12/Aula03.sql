
  -- Aula 03: �ndices secund�rios.

  SELECT nome FROM taluno
  WHERE nome LIKE '%MA%';  --F9

  -- Criar �ndice para tabela TALUNO na coluna NOME
  CREATE INDEX IND_TALUNO_NOME ON TALUNO(NOME);

  SELECT NOME FROM TALUNO
  WHERE NOME LIKE '%MA%';  --F9

  CREATE INDEX IND_TALU_NOMECIDADE
  ON TALUNO(NOME, CIDADE);

  SELECT NOME, CIDADE FROM TALUNO
  WHERE NOME LIKE '%A%' AND CIDADE LIKE '%A%';

  -- Exibir os �ndices exixtentes
  SELECT * FROM USER_INDEXES;

  -- Deletar um �ndice
  DROP INDEX IND_TALUNO_NOMECIDADE;

  -- Sinonimos.
  -- Criar um apelino para uma tabela.

  CREATE SYNONYM ALU FOR TALUNO;

  SELECT * FROM ALU;

  COMMIT;





