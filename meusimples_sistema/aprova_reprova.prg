procedure main 

    local nPasses AS NUMERIC,;
          nFailures AS NUMERIC,;
          nStudentCounter AS NUMERIC,;
          nResult AS NUMERIC



nPasses := 0
nFailures := 0
nStudentCounter := 1
nResult := 0


? "Bem-vindo ao programa de contagem de aprovacoes e reprovacoes."
bruno
DO WHILE ( nStudentCounter <= 10 )
    input "Forneca o resultado (1=aprovado, 2=reprovado) : " to nResult

    IF (nResult == 1 )
        nPasses++
    ELSE
        nFailures++
    ENDIF
        nStudentCounter++
ENDDO

? "Aprovados : ", nPasses
? "Reprovados: ", nFailures

    IF ( nPasses > 8 )
        ?
        ? "Aumente o preco do curso."
    ENDIF
return
