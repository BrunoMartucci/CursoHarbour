procedure main 

local nOpc    //Opcao selecionada

    set color to "B/W, W+/B+"

    CLS
        @8,8 to 16,25 double
        
        @10,10 prompt "Cadastros "
        @12,10 prompt "Relatorios "
        @14,10 prompt "Sair "
        MENU TO nOpc

    switch nOpc
        case 1
            ? "Cadastros"
            exit
        case 2
            ? "Relatorios"
            exit
        case 0
        case 3
        otherwise
            ? "Sair"
        end 
return