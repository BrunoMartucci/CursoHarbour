/*
    Operacoes com datas

    Entrada: A data de hoje - Date()
    Saida: Se hoje for o dia do pagamento ou o dia for menor o 
    programa emite um aviso.
*/
#define data_limite 0d20230410

procedure main
set date british

    ? "Hoje e " , Date()
    ? "A data limite e " , data_limite

    /*O programa nao tem entrada do usuario
    e o dia e gerado por Date*/

    if Date() > data_limite
            ? "Atencao, passou do prazo de pagamento"
        elseif Date() < data_limite
            ? "Atencao, pagamento adiantado"
        elseif Date() == data_limite
            ? "Atencao, hoje e o dia do pagamento"
    end if

return 