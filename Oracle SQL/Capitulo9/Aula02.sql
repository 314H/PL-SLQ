
   -- Aula 02

   CREATE TABLE TESTE
   ( CODIGO INTEGER NOT NULL PRIMARY KEY,
      DATA DATE DEFAULT SYSDATE
    );

    INSERT INTO TESTE (CODIGO) VALUES (1);

    INSERT INTO TESTE (CODIGO, DATA) VALUES (2, '03/09/2013');

    SELECT * FROM TESTE;

    COMMIT;
