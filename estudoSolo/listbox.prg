procedure main()

local GetList := {}
local cCity

    CLS
    cCity = "Milano"

        @ 4, 4, 12, 20 GET cCity;
            LISTBOX { "Milano", "Genova", "Roma", "Pisa", "Torino" }
        READ

            @ 14, 10 SAY "Voce selecionou: " + cCity
return