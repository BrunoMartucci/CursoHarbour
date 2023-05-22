procedure main 

    local cResposta AS CHARACTER 
    local nContador AS NUMERIC 
    
        ? "Processando com o laco WHILE "
        DO WHILE .T.
            ACCEPT "Confirma a oprecao ? (S/N) " to cResposta
            IF ! (cResposta $ "SsNn" )
            ? "Digite 'S' para sim ou 'N' para nao "
            LOOP 
        ELSE
            EXIT 
        ENDIF 
    ENDDO 
    
    ? "Processando com o laco FOR "
    FOR nContador := 1 TO 5 
        ? nContador 
        ACCEPT "Deseja prosseguir para a etapa seguinte (S/N) " to cResposta
    
    IF (cResposta $ "nN" )
        ? "Pulando sem executar o restante da operacao  " , nContador 
        LOOP 
    ENDIF 
        ? "RESTANTE DA OPERACAO " nContador 
    NEXT 
        ? "O valor apois a saida e " , nContador
    
    return 