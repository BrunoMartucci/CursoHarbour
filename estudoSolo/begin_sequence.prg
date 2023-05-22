procedure main 

local x,y AS NUMERIC 

BEGIN SEQUENCE 
FOR x := 1 TO 15
    FOR y := 1 TO 15
        ? x , y 
        IF x == 3 .AND. y == 10
          ? "DEVO SAIR DOS DOIS LACOS"
        EXIT 
        ENDIF 
    NEXT 
    IF x == 3 .and. y == 10 
        ? "DEVO SAIR DESSE LACO"
        EXIT 
    ENDIF
NEXT 
? "Final do programa"
? " x vale " ,x , " e y vale " , y 

return 