
   -- Aula 02

   -- Criando a tabela
   CREATE TABLE TDESCONTO
   ( CLASSE VARCHAR(2),
     INFERIOR INTEGER,
     SUPERIOR INTEGER
   );

   -- Selecionando a tabela
   SELECT * FROM TDESCONTO ;

   -- Inserindo dados usando o input.
   INSERT INTO TDESCONTO (CLASSE, INFERIOR, SUPERIOR)
   VALUES ('&cla', &inf, &sup);

   -- Pesquisando dados usando o inpu
   SELECT * FROM TDESCONTO
   WHERE CLASSE = '&cla';

   -- Atualizando dados usando o input.
   UPDATE TDESCONTO SET
   INFERIOR = &inf,
   SUPERIOR = &sup
   WHERE CLASSE = '&cla';

   -- Deletar um dado usando o input
   DELETE FROM TDESCONTO
   WHERE CLASSE = '&cla';

   -- Criando uma nova abela baseada em dados de outra tabela.
   CREATE TABLE TDESCONTO2
      AS SELECT * FROM TDESCONTO

   SELECT * FROM TDESCONTO2

   -- Deletar os registros da tabela.
   -- Opcional a clausula WHERE.
   DELETE FROM TDESCONTO2


   -- NÃO tem a opção da clausula WHERE.
   -- O  ROLLBACK não reverte a ação do TRUNCATE.
   TRUNCATE TABLE TDESCONTO2

   -- Desfazer a ultima transação.
   ROLLBACK;

   -- Aplicar todas as alterações realizadas no banco.
   COMMIT;









