/*
    Manutencao de clientes (menu proncipal)
*/
#define ULTIMA_LINHA 23
#include "inkey.ch"
procedure main 
local nOpc
Config()
TelaInicial()

    SET DATE BRITISH
    SET DELIMITERS ON
    SET DELIMITERS TO "[]"
    SET WRAP ON
    SET MESSAGE TO ULTIMA_LINHA-1 CENTER

    CLS
        @ 0,0 TO 3, MAXCOL()
        @ 1,3 SAY "Sistema para controle de usuarios"
        @ 1,MAXCOL()-15 SAY "DATA : " + DTOC ( DATE() )
        @ 2,3 SAY "Cadastro de Clientes"

        @ 4,0 TO ULTIMA_LINHA,MAXCOL()

        @ 11,05 TO 18,36 //contorno do menu

        @ 06,39 TO ULTIMA_LINHA-3,MAXCOL()-3 //contorno box a direita do menu

        @ 11,07 SAY ".: Manutencao de clientes :."
        DO WHILE .T.

        @ 12,10 PROMPT "     Inclusao    " MESSAGE "Inclusao de usuarios "
        @ 13,10 PROMPT "     Alteracao   " MESSAGE "Alteracao de usuarios "
        @ 14,10 PROMPT "     Exclusao    " MESSAGE "Exclusao de usuarios "
        @ 15,10 PROMPT "     Listagem    " MESSAGE "Listagem de usuarios "
        @ 17,10 PROMPT "     Sair        " Message "Sair do sistema "
            MENU TO nOpc

        DO CASE
            CASE nOpc == 1
                Inclui()
            CASE nOpc == 2
                Altera()
            CASE nOpc == 3
                Exclui()
            CASE nOpc == 4
                Lista()
            CASE nOpc == 5
                EXIT //sai do laco consequentemente do programa
            ENDCASE
        
        @ 07,40 CLEAR TO ULTIMA_LINHA-4,MAXCOL()-4 //limpa o interior do box
        ENDDO

return

/*
 Inclusao de cliente
*/
procedure INCLUI()

    @ 07,45 SAY "Inclusao de usuarios "
    @ 09,45 SAY "Novo usuario"
    INKEY(0)
return

/*
Alteracao de cliente
*/
procedure ALTERA()
@ 07,45 SAY "Altecao de usuarios"
@ 09,45 SAY "Qual usuario deseja alterar?"
INKEY(0)
return

/*
Exclusao de cliente
*/
procedure EXCLUI()
@ 07,45 SAY "Exclusao de usuarios"
@ 09,45 SAY "Qual usuario deseja excluir?"
INKEY(0)
return

/*
Listagem de cliente
*/
procedure LISTA()
@ 07,45 SAY "Listagem de usuarios"
@ 09,45 SAY "Nossos usuarios"
INKEY(0)
return

/*
Config
*/
procedure config()
    SET DATE BRITISH
    SET CENTURY ON
    SET DELIMITERS ON
    SET DELIMITERS TO "[]"
    SET WRAP ON
    SET MESSAGE TO ULTIMA_LINHA-1 CENTER
    SET EVENTMASK TO INKEY_ALL
return

/*
Tela inicial
*/
procedure TelaInicial()

    CLS
        @ 0,0 TO 3,MAXCOL()
        @ 1,3 SAY "Sistema para controle de usuarios"
        @ 1,MAXCOL()-15 SAY "Data : " + DTOC( DATE())
        @ 2,3 SAY "Cadastro de clientes"

        @ 4,0 TO ULTIMA_LINHA,MAXCOL()
return