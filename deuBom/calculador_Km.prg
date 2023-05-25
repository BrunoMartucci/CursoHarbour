procedure main 
local nKmIni, nKmFim 
local nQtd
local nConsumo


    input "Entre com o valor da quilometragem inicial : " to nkmIni
    input "Entre com o valor da quilometragem final : " to nKmFim
    input "Entre com a quantidade consumida : " to nQtd

    nConsumo := (nKmFim - nKmIni ) / nQtd

    ? "O consumo e de " ,nConsumo, " Km/1"

return