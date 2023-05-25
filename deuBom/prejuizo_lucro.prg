#define PREJUIZO "N/R" //preto/vermelho
#define LUCRO "N/G" // preto/verde

procedure main 
local nAvista := 0
local nAprazo := 0
local nDespesas := 0
local nResultado
local GetList := {}

    set color to "W/N"  //branco/preto
    CLS

        @ 8,8 to 16,55 double

        @ 10,10 SAY "Informe as vendas a vista : " GET nAvista ;
                PICTURE "@E 999,999.99" RANGE 0, 999999.99
        @ 12,10 SAY "Informe as vendas a prazo : " GET nAprazo ;
                PICTURE "@E 999,999.99" RANGE 0, 999999.99
        @ 14,10 SAY "Informe as despesas       : " GET nDespesas ;
                PICTURE "@E 999,999.99" RANGE 0, 999999.99
        READ

    nResultado := ( nAvista + nAprazo ) - nDespesas
    IF nResultado > 0
        @ 18,10 SAY "Lucro de              : " COLOR LUCRO
    ELSEIF nResult < 0 
        @ 18,10 SAY "Prejuizo de           : " COLOR PREJUIZO
    ELSE 
        @ 18,10 SAY "Resultado neutro      : "
    ENDIF
        @ 18,col()+1 SAY nResultado PICTURE "@E 999,999.99"
        ?
        ? "Fim"
        ?
    
return