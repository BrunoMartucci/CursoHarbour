/*
    Estrutuas de controle de fluxo e decisao
*/

procedure main 
    local nNota 
    
        //Recebe a nota do aluno
            nNota := 0
            Input "Informe a nota do aluno: " to nNota
            ?
            ? "Decide se e aprovado ou nao, de acordo com a nota. "

            if ( nNota > 10) .or. ( nNota < 0 )
                ? "Nota invalida."
            elseif ( nNota >= 7)
                ? "Aprovado"
            elseif (nNota >= 5)
                ? "Recuperacao"
            elseif (nNota >= 0)
                ? "Reprovado"
            else
                ? "Valor invalido"
            end if

    return