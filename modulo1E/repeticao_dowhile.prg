/*
    - Rpete uma sequencia de codigo um dado numero
    de vezes.
    - A sequencia de repeticao pode ser fixa (definida antecipadamente)
    ou variavel, (definida como condicao de saida)
    - Programa processos repetitivos, economizando espaco
    no codigo
    - Antigamente usava-se o GOTO (Ir para).
*/

procedure main 
local nNota 

    nNota := 1
    do while ( nNota <= 1000 )
        ? nNota ++
    end do
    ? "Fim: " / nNota

return
