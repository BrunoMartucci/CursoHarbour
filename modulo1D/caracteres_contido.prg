/*
    O operador esta contido e usado para
    comparar variaveis do tipo caractere. $

    Informa se uma string esta contida em
    outra cadeia de caracteres

    Leva em consideracao maiusculas e minusculas,
    ex: casa e diferente de CASA
*/
 
#define ESTADOS_2PORCENTO "CE:MA:PI"

procedure main 
local cSigla 

     accept "Informe a sigla do Estado: " to cSigla 

     cSigla := upper ( cSigla ) 

        IF ":" $ cSigla
            ? "Formato incorreto"
        else
            if cSigla $ ESTADOS_2PORCENTO
                ? " Aliquota de 2 porcento"
            else
                ? " Aliquota normal"
            end if
        end if
            
        
return
