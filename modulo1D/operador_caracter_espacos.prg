/*
    Elimina espaços com ltrim, rtrin, alltrin
*/

procedure main
local cNome1, cNome2 

    ? "Coloca os nome em ordem crescente, independente dos espacos"
    ?
    ? "Para isso usamos as funcoes, ltrin, rtrin e alltrin"

cNome1 := " Pedro"
cNome2 := "Ana"

if ( alltrim (cNome1) > alltrim (cNome2))
    ? cNome2
    ? cNome1
else
    ? cNome1
    ? cNome2
end if

return