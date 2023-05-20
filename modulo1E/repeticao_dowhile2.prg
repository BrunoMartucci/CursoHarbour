/*
    Recebe a nota dos alunos.
    Entrada: 10 notas
    Saida: A media
*/


#define qtd_alunos 10
procedure main 
local nTotnotas, ; //Soma das notas
      nNotadig, ;  //Numero  de notas
      nNota, ;    // Valor de uma nota
      nMedia      // Media das notas
nTotnotas := 0
nNotadig := 1

//Processamento
    do while ( nNotadig <= qtd_alunos)
       input "Forneca a nota do aluno: " to nNota

    nNotadig ++
    nTotnotas += nNota
    end do

//Verifica a media
    nMedia := nTotnotas / qtd_alunos
    ? "A media geral e: " , nMedia

return

