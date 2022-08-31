program dosDados;

uses SysUtils;

const
    largo = 6;
    valoresPosibles = 12;
    longitudPorValor = 7;
    min = 2;
type
    arrAuxiliar =  array[2..valoresPosibles] of integer;

var
    auxArr: arrAuxiliar;
    arrPosibles : array[2..valoresPosibles,0..longitudPorValor] of string[4];
    i,j:integer;
begin

    for i:=0 to 6 do
    begin
    
        for j:=1 to 7 do
        begin
            
            if((i+j >= min) and (i+j <= valoresPosibles)) then
            begin
                arrPosibles[i+j][auxArr[i+j]] := concat(IntToStr(i),'/',IntToStr(j));
                auxArr[i+j] := auxArr[i+j] + 1;
            end;
        
        end;
    end;

    for i:=2 to valoresPosibles do
    begin
    
        for j:=1 to longitudPorValor do
        begin
            write('[',arrPosibles[i][j],']');
        end;
        
        writeln();  
    
    end;

end.
