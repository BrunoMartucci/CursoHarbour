/*
Chamando rotinas de outros arquivos
*/
procedure main 
local cNome := SPACE(20)
local cTipo := SPACE(1)
local dNascimento := CTOD("//")
local GetList := {}

    Config()

    CLS
    @ 5,5 SAY "Informe o nome : " GET cNome

    @ 7,5 SAY "Informe o tipo (F OU J): " GET cTipo VALID UPPER( cTipo ) $ "FJ"
    @ 9,5 SAY "Data de nascimento : " GET dNascimento
    READ
return 