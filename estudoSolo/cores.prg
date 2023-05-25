procedure main 

local cProjeto := "SISTEMA PARA CONTROLE DE FROTAS    "
local cResponsavel := space(20)
local nValor := 0
local GetList := {}

    set color to "BG+N, M/W,,,W+/GR+"

    CLS

    @ 8,8 to 16,75 double 

    set delimiters on
    set delimiters to " [] "

     @ 10,10 SAY "Nome do projeto      : " GET cProjeto PICTURE "@K"
     @ 12,10 SAY "Nome do responsavel  : " GET cResponsavel

     @14,10 SAY "Valor do projeto       : " GET nValor PICTURE " @E  999,999.99"
     READ

 
return 