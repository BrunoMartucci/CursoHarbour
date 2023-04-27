/*
    Data com adicao e subtracao
*/

procedure main 
local dPag //Data de pagamento
set date british 

    dPag := CToD ("06/04/2023")
    ? "A data de pagamento e: " , dPag
    dPag += 2 //dPag :=(dPag + 2)
    ?
    ? "Agora a data de pagamento tem mais dois dias: " , dPag
    ?
    dPag -= 2 // dPag := (dPag - 2)
    ? "Agora a data de pagamento tem menos dois dias: " , dPag

  /* dPag := dPag /= 2 //Gera um erro
    ? "A divisão com data gera um erro: " , dPag

    dPag := dPag *=2 //Gera um erro
    ? "A multiplicaçao com data gera um erro: " , dPag */ 


return