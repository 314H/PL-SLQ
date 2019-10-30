
 -- Aula 02: Criando visõess

    -- Criando uma view V_ALUNO
    CREATE OR REPLACE VIEW V_ALUNO
    AS
      SELECT COD_ALUNO AS CODIGO, SALARIO, ESTADO,
              NOME AS ALUNO, CIDADE
      FROM TALUNO
      WHERE ESTADO='RS';

    -- Usando a view V_ALUNO
    SELECT * FROM V_ALUNO
    ORDER BY ALUNO;

    -- Criando uma view V_CONTRATO_TOP
    CREATE OR REPLACE VIEW V_CONTRATO_TOP
    AS
      SELECT COD_CONTRATO, DESCONTO
      FROM TCONTRATO
      WHERE DESCONTO > 10;

    -- Usando a view V_CONTRATO_TOP
    SELECT * FROM V_CONTRATO_TOP

    -- Exibir as views do usuário atual
    SELECT VIEW_NAME, TEXT
    FROM USER_VIEWS;

    -- Criando uma view V_CONTRATO_TOP
    -- com parametros de saída. Entre parenteses você nomeia as colunas
    CREATE VIEW V_ALUNO2(COD, ALUNO, SAL)
    AS
      SELECT COD_ALUNO, NOME, SALARIO
      FROM TALUNO;

    -- Exibir as views V_CONTRATO_TOP
    SELECT * FROM V_ALUNO2;


    -- Criando uma view V_CONTRATO
    -- View complexo
    CREATE OR REPLACE VIEW V_CONTRATO
    AS
      SELECT Trunc(DATA) AS DATA,
              Max(DESCONTO) MAXIMO,
              Avg(DESCONTO) MEDIA,
              Count(*) QTDE
      FROM TCONTRATO
      GROUP BY Trunc(DATA);

    -- Exibir as views V_CONTRATO_TOP
    SELECT * FROM V_CONTRATO;


    -- Criando uma view V_PESSOA_F
    -- View simples
    CREATE OR REPLACE VIEW V_PESSOA_F
    AS
      SELECT COD_PESSOA, TIPO, NOME, COD_RUA AS RUA
      FROM TPESSOA
      WHERE TIPO='F';

    SELECT * FROM V_PESSOA_F;


    -- Realizando consulta a partir de uma view.
    -- Usando a view V_PESSOA_F
    SELECT PES.COD_PESSOA AS CODIGO,
            PES.NOME AS PESSOA,
            CID.NOME AS CIDADE,
            RUA.NOME_RUA AS RUA
    FROM V_PESSOA_F PES, TRUA RUA, TCIDADE CID
    WHERE PES.RUA = RUA.COD_RUA (+)
    AND CID.COD_CIDADE = RUA.COD_CIDADE
    ORDER BY PES.NOME;

    COMMIT;























