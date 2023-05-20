procedure main

local nContador AS NUMERIC 
local cResposta AS NUMERIC 

    ? "Processando com o laço WHILE "
    nContador := 1
    DO WHILE nContador < 100 
        ? nContador 
        ACCEPT "Deseja contar mais um ? (S/N) " to cResposta 
        IF !( cResposta $ "Ss")
            EXIT 
        ENDIF 
        nContador += 1 
    ENDDO 
    ? "O valor apos a saida é " , nContador


return