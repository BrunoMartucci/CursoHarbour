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

    //if (nNota >= 7 )
    //    ? "Aprovado"
    //else
    //    ? "Reprovado"
    //end if


    /*
    if(nNota >= 7)
        ? "Aprovado"
        else
        if (nNota >= 5)
            ? "Recuperacao"
        else
            ? "Reprovado"
        end if
    end if
    */

    if (nNota >= 7)
        ? "Aprovado"
    elseif (nNota >= 5)
        ? "Recuperacao"
    else
        ? "Reprovado"
    end if

return