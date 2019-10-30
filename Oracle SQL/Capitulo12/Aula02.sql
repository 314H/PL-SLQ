
  -- Aula 03: Índices

  CREATE SEQUENCE SEQ_ALUNO1
  START WITH 60 -- Valor inicial
  INCREMENT BY  5 -- Qtde a incrementar
  MINVALUE 60 -- Valor minimo
  MAXVALUE 250 -- Valor máximo
  NOCACHE -- Não guarda a faixa de valores em cache
  NOCYCLE;

  INSERT INTO TALUNO (Cod_Aluno, Nome)
  VALUES (Seq_Aluno1.NEXTVAL,'MASTER TRANING 2');
  -- Proximo Value

  SELECT * FROM TALUNO;

  -- Exibir as sequencias criadas pelo usuário
  SELECT * FROM USER_SEQUENCES;

  -- Valor atual da sequencia
  SELECT SEQ_ALUNO1.CURRVAL FROM DUAL;

  -- Alterar o valor da sequencia
  ALTER SEQUENCE SEQ_ALUNO1 MAXVALUE 500;

  -- Alterar o valor da sequencia
  DROP SEQUENCE SEQ_ALUNO1;
  CREATE SEQUENCE SEQ_ALUNO1 START WITH 80;

  COMMIT;
