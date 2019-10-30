
  -- Aula 03: Savepoint.

  COMMIT;

  SELECT * FROM TDESCONTO;

  -- Savepoint
  SAVEPOINT upd_b;

  UPDATE TDESCONTO SET
  SUPERIOR = 88
  WHERE CLASSE = 'B';

  -- Savepoint
  SAVEPOINT upd_a;

  UPDATE TDESCONTO SET
  SUPERIOR = 99
  WHERE CLASSE = 'A';

  -- Savepoint
  SAVEPOINT ins_OK;

  INSERT INTO tdesconto(classe, inferior, superior)
  VALUES ('&cla', &inf, &sup);

  -- Usar um ponto de restauração

  -- Voltar para o ponto de restauração ins_OK.
  ROLLBACK TO SAVEPOINT ins_OK;

  -- Voltar para o ponto de restauração upd_a.
  ROLLBACK TO SAVEPOINT upd_a;

  -- Voltar para o ponto de restauração upd_b.
  ROLLBACK TO SAVEPOINT upd_b;

  SELECT * FROM TDESCONTO;

  COMMIT;






