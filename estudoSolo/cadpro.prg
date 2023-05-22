
//#Define cClientes 

//PROCEDURE main
//local cNome, cEmail, cTelefone

    
    //? "CADASTRO DE CLIENTES"
    //? "-------------------"
    
   // accept "Nome: ", to cNome
   // accept "Email: ", to cEmail
   // accept "Telefone: ", to cTelefone
    
   //APPEND({ Nome := cNome, Email := cEmail, Telefone := cTelefone }, cClientes)
    
  //  ? "Cliente cadastrado com sucesso!"
   // WAIT
//RETURN

/*PROCEDURE ListarClientes()
    CLS
    ? "LISTA DE CLIENTES"
    ? "-----------------"
    
    FOR i := 1 TO LEN(cClientes)
        ? "Cliente ", i
        ? "Nome: ", cClientes[i]["Nome"]
        ? "Email: ", cClientes[i]["Email"]
        ? "Telefone: ", cClientes[i]["Telefone"]
        ? "-----------------"
    NEXT i
    
    WAIT
RETURN

PROCEDURE MenuPrincipal()
    LOCAL nOpcao

    DO WHILE .T.
        CLS
        ? "SISTEMA DE CADASTRO DE CLIENTES"
        ? "-------------------------------"
        ? "1 - Cadastrar cliente"
        ? "2 - Listar clientes"
        ? "3 - Sair"
        ? "-------------------------------"
        
        INPUT "Selecione uma opção: ", nOpcao

        SWITCH nOpcao
            CASE 1
                CadastrarCliente()
            CASE 2
                ListarClientes()
            CASE 3
                RETURN
        ENDSW
    ENDDO
RETURN

MenuPrincipal()