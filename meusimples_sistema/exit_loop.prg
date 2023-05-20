procedure main()

LOCAL nCont AS NUMERIC 
LOCAL cResp AS CHARACTER

    ? "LOOP"
    FOR nCont := 1 TO 10
        ? "O valor do nCont é " , nCont
        IF nCont == 5
            ? "VOU PARA O TOPO DO LACO MAS nCont SERA INCREMENTADA"
            LOOP
        ENDIF
    NEXT
    ? "O valor fora do laco e " , nCont


    ? "EXIT"
    FOR nCont := 1 TO 10
        ? "O valor de nCont é " , nCont
        IF nCont == 5
            ? "VOU SAIR IMEDIATAMENTE SEM INCREMENTAR nCont"
            EXIT
        ENDIF
    NEXT

    ? " O valor fora do laco e " , nCont

return