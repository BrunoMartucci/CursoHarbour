#define qtd_notas 5
#define CHAVE "senha1"

PROCEDURE main()
   LOCAL nTotnotas := 0, ; // Soma das notas
         nNotadig := 1, ;  // Número de notas
         nNota, ;          // Valor de uma nota
         nMedia, ;         // Média das notas
         nMateriaFinal, ;  // Nome da materia
         cChave            // Senha de acesso
    local cProjeto := "SISTEMA BOLETIM ESCOLAR    "
    local cResponsavel := space(20)
    local cNome := space(20)
    local nValor := 0
    local GetList := {}
    local nMateria := space(20)

    accept "Informe a palavra a senha para acessar o sistema: " to cChave
    ?
 if ( cChave == CHAVE)
     ? "Acesso liberado"
 else
     ? "Acesso negado"
 end if
    ?
   

    set color to "BG+N, M/W,,,W+/GR+"

    CLS

    @ 9,8 to 17,75 double 

    set delimiters on
    set delimiters to " [] "

     @ 10,10 SAY "Nome do projeto    : " GET cProjeto PICTURE "@K"
     @ 12,10 SAY "Materia            : " GET nMateria
     @ 14,10 SAY "Nome do professor  : " GET cResponsavel
     @ 16,10 SAY "Nome do aluno      : " GET cNome
     @ 12,10 SAY "Materia            : " GET nMateria
    
     READ
   
   DO WHILE nNotadig <= qtd_notas
      INPUT "Forneca a nota do aluno " TO nNota

      nNotadig++
      nTotnotas += nNota
   ENDDO
   ?
   
   if ( nNota > 10) .or. ( nNota < 0 )
    ? "NOTA INVALIDA"
elseif ( nNota >= 7)
    set color to "G"
    ? "APROVADO"
elseif (nNota >= 5)
    set color to "BG"
    ? "RECUPERACAO"
elseif (nNota >= 0)
    set color to "R"
    ? "REPROVADO"
else
    set color to "W+"
    ? "Valor invalido"
end if
    ?
    

   // Verifica a média
   set color to "W+"
   nMedia := nTotnotas / qtd_notas
   ? "A media geral do" ,cNome, "em ",nMateria, "e:",nMedia
   ?
   set date british
   ? "Data do lancamento " ,cTod ("24/05/2023"), "Hrs:" , time() 
   ?
   ?
    accept "Deseja informar mais um aluno ? (S/N) " to cResposta 
 
    
    
   RETURN