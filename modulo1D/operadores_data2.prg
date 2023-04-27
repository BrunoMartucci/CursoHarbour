/*
    Melhorando a logico do programa
    Entrada: Data de hoje
    Saida: Se faltar 10 dias ou menos para pagamento, emite um aviso.
*/

#define data_vencimento 0d20230415
#define dias_faltam 10

procedure main 
    set date british

    ? "Hoje e: " , date()
    ? "A data do pagamento e " , data_vencimento

    if date() > data_vencimento
        ? "Atencao, passou do pagamento. "
    elseif date() < data_vencimento
        if (data_vencimento - date()) < 10
        ?"Esta proximo do dia do pagamento"
        end if
    elseif date() == data_vencimento
        ? "Atencao, hoje nao eo ultimo dia para pagamento"
    end if

return