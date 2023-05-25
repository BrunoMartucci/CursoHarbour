/*
Chamando rotinas de outros arquivos
*/
procedure main 
    local nParcela1

    nParcela := 2
    Soma ( nParcela1 )

return

procedure Soma ( nVal1, nVal2 )

    IF PCOUNT() <> 2
        ? "Quantida incorreta de parametros"
        ? "Essa rotina so aceita 2 parametros"
        return 
    ENDIF 

    @ 9,5 SAY nVal1 + nVal2 PICTURE "@RE 999,999.99"
RETURN