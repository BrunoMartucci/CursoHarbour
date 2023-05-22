/* 
    COMPARANDO O LACO FOR COM O LACO WHILE
*/

procedure main 
local nContador 

    ? "Processamento com o laco while."
    nContador := 1
    do while (nContador <= 10 )
        ? nContador
        ++nContador
    end do  
    ? "Apos o laco while o valor de nContador agora e: " , nContador
?
?
?

    ? "Processamento com o laco for"
    for nContador := 1 to 10 
        ? nContador
    next 
    ? "Apos o laco fot o valor de nContador agora e: " ,nContador

return 