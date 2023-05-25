/* 
Chamando rotinas de outros arquivos
*/
procedure main
local nParcela1 := 0
local nParcela2 := 0
local GetList := {}


    CLS

        @ 5,5 SAY "Informe a parcela 1 : " GET nParcela1 PICTURE "@RE 999,999.99"

        @ 7,5 SAY "Informe a parcela 2 : " GET nParcela2 PICTURE "@RE 999,999.99"
        READ

        Soma (nParcela1 + nParcela2 )
        
return

procedure Soma ( nVal1, nVal2 )

    @ 9,5 SAY nVal1 + nVal2 PICTURE "@RE 999,999.99"

return