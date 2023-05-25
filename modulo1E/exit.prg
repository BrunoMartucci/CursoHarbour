/*
    Exit e Loop funciona somente no interior dos lacos while e for

    Exit forca uma saida e loop desvia a sequencia para o topo do laco
*/

//Exemplo do camando EXIT

Procedure main 
local nContador
local cResposta


    ? "Processando com o laco WHILE"
    nContador := 1
    do while nContador < 100
        ? nContador
        accept "Deseja contar mais um ? (S/N) " to cResposta
        if ! (cResposta $ "Ss" )
            exit
        end if
         nContador += 1
    end do
    ? "O valor apos a saida e: " , nContador
    ?
    ?
    ? "Processamento com o laco FOR"
       For nContador := 1 to 100
            ? nContador
            accept "Deseja conta mais um ? (S/N)" to cResposta
            if !( cResposta $ "Ss")
                exit
            end if
        next
        ? "O valor apos a saida e: " , nContador

return
