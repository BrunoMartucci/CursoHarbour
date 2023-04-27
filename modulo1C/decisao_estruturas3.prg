#define CHAVE "senha"
procedure main 
local cChave
    accept "Informe a palavra chave: " to cChave

    if ( cChave == CHAVE)
        ? "Acesso liberado"
    else
        ? "Acesso negado"
    endif
return
