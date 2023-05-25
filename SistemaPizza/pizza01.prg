#define BASE 10.00 //custo da base da pizza
procedure main 
local nNumCob //numero de cobertura
local nValCob // preco por cobertura
local nTotal // preco final

    //Descobre o numero de coberturas
    input "Informe a quantidade de coberturas : " to nNumCob
    input "Informe o preco da cobertura : " to nValCob

    nValFinal := BASE + ( nNumCob * nValCob )

    ? "A pizza custa $ ", nValFinal
return