#define qtd_alunos 10

PROCEDURE main()
   LOCAL nTotnotas := 0, ; // Soma das notas
         nNotadig := 1, ;  // Número de notas
         nNota, ;          // Valor de uma nota
         nMedia            // Média das notas

   // Processamento
   DO WHILE nNotadig <= qtd_alunos
      INPUT "Forneca a nota do aluno: " TO nNota

      nNotadig++
      nTotnotas += nNota
   ENDDO

   // Verifica a média
   nMedia := nTotnotas / qtd_alunos
   ? "A media geral e: ", nMedia

   RETURN
