 -- Aula02

      SELECT * FROM TALUNO;

   -- Concatenar o c�digo do aluno mais o nome do aluno - op��o 1
      SELECT Concat(COD_ALUNO, NOME) FROM TALUNO;

   -- Concatenar o c�digo do aluno mais o nome do aluno - op��o 2
      SELECT COD_ALUNO ||'-'|| NOME FROM TALUNO;

   -- Tornar a primeira letra de cada palavra em mai�scula
      SELECT InitCap(NOME) FROM TALUNO;

   -- Tornar a primeira letra de cada palavra em mai�scula. Exemplo 2
      SELECT InitCap('JOSE DA SILVA') FROM TALUNO;

   -- Exibir a posi��o de um caracter em uma palavra
   -- Ser� exibido a posi��o de R

      -- Sem formata��o
      SELECT InStr(NOME,'R') FROM TALUNO;

      -- Com formata��o
      SELECT NOME,  InStr(NOME,'R') AS POSICA_O FROM TALUNO;

   -- Contar quantos caracter tem em uma palavra.
   SELECT NOME, Length(NOME) FROM TALUNO;

   -- Exibir os intens da coluna em minusculo.
   SELECT NOME, Lower(NOME) FROM TALUNO;

   -- Exibir os intens da coluna em maiusculo.
   SELECT NOME, UPPER(NOME) FROM TALUNO;

   -- Prenche a esquerda da coluna COD_ALUNO  com 0 at� o limite de 5 caracter.
   SELECT LPad(COD_ALUNO,5,'0') FROM TALUNO;

   -- Prenche a direita da coluna SALARIO com 0 at� o limite de 10 caracter.
   SELECT RPad(SALARIO,8,'0') FROM TALUNO;

   -- Prenche a direita da coluna COD_ALUNO com $ at� o limite de 10 caracter.
   SELECT RPad(NOME,10,'$') FROM TALUNO;

   -- Copiar 3 caracter no NOME a partir do 1� caracter.
   SELECT NOME, SubStr(NOME,1,3) FROM TALUNO;

   -- Copiar 1 caracter no NOME a partir do 1� caracter.
   SELECT NOME, SubStr(NOME, 1,1) FROM TALUNO;

   -- Copiar 1 caracter no NOME a partir do 3� caracter.
   SELECT NOME,  SubStr(NOME, 3,1) FROM TALUNO;

   -- Exemplo de replace. Substituir todas as letras R no nome por $.
   -- Ser� alterado apenas na vizualiza��o.
   SELECT REPLACE (NOME, 'R','$') FROM TALUNO;

   -- Exemplo fun��o aninhada
   SELECT REPLACE (Upper(NOME), 'R','$') FROM TALUNO;

   -- Exemplo copiar a �ltima letra do nome.
   SELECT NOME, SubStr(NOME, Length(NOME),1) FROM TALUNO;

   -- Exemplo copiar a �ltimas 2 letra do nome.
   SELECT NOME, SubStr(NOME, Length(NOME)-1, 2) FROM TALUNO;

   -- -- Exemplo copiar a �ltimaS 3 letraS do nome. A partir do 3� caracter.
   SELECT NOME, SubStr(NOME, 3, Length(NOME)-3 ) FROM TALUNO;



   -- Paramos aqui.


  COMMIT;





