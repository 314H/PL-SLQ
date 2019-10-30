
    -- Aula 02

    TALUNO
      COD_ALUNO - PK

    TCONTRATO
      COD_CONTRATO - PK --> Chave primaria --> PRIMARY KEY
      COD_ALUNO - FK --> CHAVE PRIMARI QUE VEM DE OUTRA TABELA

    -- Exibir as constraits criadas pelo usuario logado.
    SELECT * FROM USER_CONSTRAINTS;

    -- Exibir todas as constraites criadas no banco.
    SELECT * FROM ALL_CONSTRAINTS;

    -- DROP TABLE tcidade

    CREATE TABLE tcidade (
      cod_cidade INTEGER NOT NULL,
      NOME VARCHAR2(40),
      CONSTRAINT pk_cidade PRIMARY KEY(cod_cidade )
      );


    CREATE TABLE tbairro (
      cod_cidade INTEGER NOT NULL,
      cod_bairro INTEGER NOT NULL,
      nome       VARCHAR2(20),
      CONSTRAINT pk_bairro PRIMARY KEY(cod_cidade, cod_bairro)
    );

    -- Adicionar chave estrangeira.
    -- Adicionar restrição.
    ALTER TABLE tbairro ADD CONSTRAINT fk_cod_cidade
    FOREIGN KEY (cod_cidade)
    REFERENCES tcidade(COD_CIDADE);

    -- Criando a tabela
    CREATE TABLE trua(
      cod_rua INTEGER NOT NULL,
      cod_cidade INTEGER,
      cod_bairro INTEGER,
      CONSTRAINT pk_rua PRIMARY KEY(cod_rua)
      );

      -- ALTERANDO UMA TABELA
      ALTER TABLE TRUA ADD CONSTRAINT fk_cidadebairro
      FOREIGN KEY(cod_cidade, cod_bairro)
      REFERENCES tbairro(cod_cidade, cod_bairro);

      -- DROP TABLE tpessoa (Fornec ou Cliente)
      CREATE TABLE tpessoa (
        cod_pessoa INTEGER NOT NULL,
        tipo VARCHAR(1) NOT NULL,
        nome VARCHAR(30) NOT NULL,
        pessoa VARCHAR(2) NOT NULL,
        cod_rua INTEGER NOT NULL,
        cpf VARCHAR2(15),
        CONSTRAINT pk_pessoa PRIMARY KEY (cod_pessoa)
        );

        -- Unique Key
        ALTER TABLE tpessoa ADD CONSTRAINT UK_CPF UNIQUE(CPF);


        -- ALTER table tpessoa drop constraint nome_constraint
        ALTER TABLE tpessoa ADD CONSTRAINT FK_PESSOA_RUA
        FOREIGN KEY (COD_RUA)
        REFERENCES TRUA;

        -- Cidade
        INSERT INTO TCIDADE VALUES(1,'NOVO HAMBURGO');
        INSERT INTO TCIDADE VALUES(2,'IVOTI');
        INSERT INTO TCIDADE VALUES(3,'SAPIRANGA');
        INSERT INTO TCIDADE VALUES(4,'TAGUARA');

        -- Bairro
        INSERT INTO TBAIRRO VALUES(1,1, 'CENTRO');
        INSERT INTO TBAIRRO VALUES(2,1, 'RIO BRANCO');
        INSERT INTO TBAIRRO VALUES(3,1, 'CENTRO');
        INSERT INTO TBAIRRO VALUES(4,1, 'FRITZ');
        -- INSERT INTO TBAIRRO VALUES(5,1, 'AMARAL');
        -- INSERT INTO TBAIRRO VALUES(6,1, 'EMPRESA');

        -- Rua
        INSERT INTO TRUA VALUES (1,1,1,'MARCILIO DIAS');
        INSERT INTO TRUA VALUES (2,2,1,'FRITZ');
        INSERT INTO TRUA VALUES (3,3,1,'JACOBINA');
        INSERT INTO TRUA VALUES (4,3,1,'JOAO DA SILVA');

        -- Check TIPO
        ALTER TABLE TPESSOA ADD CONSTRAINT CK_PESSOA_TIPO
        CHECK (TIPO IN ('C','F'));

        -- Check PESSOA
        ALTER TABLE TPESSOA ADD CONSTRAINT CK_PESSOA_JF
        CHECK (PESSOA IN ('J','F'));

        -- Excluir constraint
        ALTER TABLE TPESSOA DROP CONSTRAINT nome_constraint;

        -- Pessoas
        INSERT INTO TPESSOA VALUES(1, 'C','MARCIO','F',1,'1234');
        INSERT INTO TPESSOA VALUES(2, 'F','BEATRIZ','F',2,'122');
        INSERT INTO TPESSOA VALUES(3, 'F','PEDRO','F',4,'1238');
        INSERT INTO TPESSOA VALUES(4, 'C','MARIA','J',3,'1239');

        SELECT * FROM TPESSOA;

        -- Foreign Key Drop
        ALTER TABLE TPESSOA DROP CONSTRAINT NOME_DA_CONTRAINT
        CASCADE CONSTRAINT

        -- Check
        ALTER TABLE TCONTRATO
        ADD CONSTRAINT CK_CONTRATO_DESCONTO
        CHECK (DESCONTO BETWEEN 0 AND 30);

        -- Desabilitado/Habilitado constraint
        ALTER TABLE TPESSOA DISABLE CONSTRAINT uk_cpf;
        ALTER TABLE TPESSOA ENABLE CONSTRAINT uk_cpf;

        -- Excluir Constraint
        ALTER TABLE TPESSOA DROP CONSTRAINT uk_cpf
        CASCADE CONSTRAINT;

        -- Exibir as constrait de uma tabela
        SELECT * FROM user_constraints
        WHERE table_name = 'TPESSOA';

        -- Exibir em qual coluna uma constraint está associada
        SELECT constraint_name, column_name
        FROM user_cons_columns
        WHERE table_name = 'TPESSOA';

        -- Exibir o tipo de objeto
        SELECT OBJECT_NAME, OBJECT_TYPE
        FROM USER_OBJECTS
        WHERE OBJECT_NAME IN ('TPESSOA')

        SELECT * FROM TPESSOA;

        -- Operação DML na View
        -- Adicionando uma regra para aceitar adicionar apenas onde o valor é 1000
        CREATE OR REPLACE VIEW vcursos1000ck
        AS
          SELECT cod_curso, nome, valor
          FROM TCurso
          WHERE valor = 1000
          WITH CHECK OPTION CONSTRAINT vcursos1000_ck;


        INSERT INTO vcursos1000ck
                (cod_curso, nome, valor)
        VALUES (52, 'TESTE Y', 1000);

        SELECT * FROM tCurso;

        -- Deletar item a patir de uma VIEW
        SELECT * FROM V_ALUNO;

        -- Deletar item
        DELETE FROM V_ALUNO WHERE CODIGO = 3;

        -- Inserir item a patir de uma VIEW
        INSERT INTO V_ALUNO
        VALUES (50, 500, 'RS', 'MARIA', 'NH');

        -- Delete em view
        -- Não pode fazer DML em view complexa
        DELETE FROM V_CONTRATO;

        -- View somente leitura (Não permite DML)
        CREATE OR REPLACE VIEW V_ALUNO3
        AS
          SELECT COD_ALUNO CODIGO,
                  NOME ALUNO, CIDADE
          FROM TALUNO
          WHERE ESTADO='RS'
          WITH READ ONLY

        -- Não pode executar delete em view somente leitura
        DELETE FROM V_ALUNO3;

        -- Excluindo visão
        DROP VIEW V_ALUNO3;


        COMMIT;
