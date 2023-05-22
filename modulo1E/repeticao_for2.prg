/*
    A clausula STEP da estrutura FOR
*/

procedure main  
local nContador 
    ? "Processando o laco for."

    for nContador := 1 to 10 step 2 
        ? nContador
    next 
    ? "O laco FOR de nContador agora e: " , nContador
    ?
    ? "Agora em ordem decrescente."
    for nContador := 10 to 1 step -2
        ?nContador
    next
    ? "O laco FOR de nContador agora e: " ,nContador

return 