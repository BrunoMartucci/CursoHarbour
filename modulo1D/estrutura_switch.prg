procedure main 
local nOpc 

    ? "Uso do Switch"
    ?
    input "Informe a opcao (1,2 ou 3): " to nOpc

    switch nOpc
        case 1
            ? "Opcao 1"
            exit
        case 2 
            ? "Opcao 2"
            exit 
        case 3 
            ? "Opcao 3"
            exit 
        otherwise
            ? "Opcao invalida"
        end
            ? "Fim"
return