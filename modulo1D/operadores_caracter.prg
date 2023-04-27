/*
    Operadores com caracter
    Faz sentido "Zaqueu" >= "Ronaldo" ?

    Codigo | Caracter
    65       A
    66       B
    67       C
    68       D
*/
procedure main 
local cRua1, cRua2

    ? "Colaca o nome das ruas em ordem crescente."

    accept "Digite o nome da rua 1: " to cRua1
    accept "Digite o nome da rua 2: " to cRua2

    if ( cRua1 > cRua2 )
        ?"Rua: " , cRua2
        ?"Rua: " , cRua1
    else
        ?"Rua: " , cRua1
        ?"Rua: " , cRua2
    end if

return