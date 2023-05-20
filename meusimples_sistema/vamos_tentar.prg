
LOCAL nTotNotas AS NUMERIC,;
      nNotaDig AS NUMERIC,;
      nNota AS NUMERIC,;
      nMedia AS NUMERIC
     

nTotNotas := 0
nNotaDig := 0
nNota := 0

? "Forneca a nota ou tecle -1 para finalizar"
input "Forneca a nota : " to nNota

DO WHILE ( nNota <> -1 )
    nTotNotas += nNota
    nNotaDig++
input "Forneca a nota : " to nNota
ENDDO

IF ( nNotaDig <> 10)
    nMedia := nTotNotas / nNotaDig
    ? "A media geral é ", nMedia 
else
    ? "Nenhuma nota foi digitada"
end if
    nMedia := nTotNotas / nNotaDig

     INPUT "Forneca o resultado (1=aprovado , 2=reprovado) : " to nResult  
return