procedure main 

    nNota:= 0
    input "Informe o valor da nota do aluno: " to nNota

    do case
        case ( nNota > 10 ) .or. ( nNota < 0 )
            ? "Valor invalido" 
        case ( nNota >= 7 )
            ? "Aprovado"
        case ( nNota >= 5 )
            ? "Recuperacao"
        case ( nNota >= 0 )
            ? "Reprovado"     
        otherwise
            ? "Valor invalido"       
    endcase

return