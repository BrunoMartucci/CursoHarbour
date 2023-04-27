/*
 1 - CTOD - Padrao americano, deve se usar junto o
 set date british
 2 - STOD - O set data nao influencia no valor da data,
 porém para exibir com dia/mes/ano tem que usar o set date british
 3 - 0D - É o formato mais novo e informa que é um valor data
*/

procedure main 

    set date british //data padrao britanico(nosso)
    set century on //para mostrar 4 casas no ano ex: 2023
    ? "A data com formato cTod e: " , cTod("06/04/2023")

    ? "A data com formato sTod e: " , sTod("20230406")

    ? "A data com formato 0d: " , 0d20230406

return