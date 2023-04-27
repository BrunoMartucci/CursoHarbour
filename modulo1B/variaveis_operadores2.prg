/*
    Incremento e decremento

    Diferença entre ++x e tambem entre --x,
    (--x ou ++x) esses operadores alteram o operando
    antes de efetuar a atribuiçao.
    (x-- ou x++) o operando é alterado e só depois
    que a atribuiçao é efetuada.
*/

PROCEDURE Main 
local nNum1 , nNum2 //valores numericos

//Operador de pre-incremento ++ 
    nNum1 := 0
    nNum2 := ++nNum1
    ? "nNum1 := 0: " , nNum1 // Vale 1
    ? "nNum2 := ++nNum1: " , nNum2 // Vale 1

    
//Operador de pós-incremento ++
//inicio
    nNum1 := 0
    nNum2 := nNum1++
    ? "nNum1 := 0: " , nNum1 //Vale1
    ? "nNum2 := nNum1++: " , nNum2 //Vale 0


//Operador de pre-incremento --
    nNum1 := 1
    nNum2 := --nNum1
    ? "nNum1 := 1: " , nNum1 //Vale 0
    ? "nNum2 := --nNum1: " , nNum2 // Vale 0


//Operador de pos-decremento --
//inicio
    nNum1 := 1
    nNum2 := nNum1--
    ? "nNum1 := 1: " , nNum1 //Vale 0
    ? "Nnum2 := nNum1--: " , nNum2 //Vale 1
//fim

return
