{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program tresDados;

uses SysUtils,crt;


const
    largo = 6;
    valoresPosibles = 18;
    longitudPorValor = 26;
    min = 3;
type
    arrAuxiliar =  array[min..valoresPosibles] of integer;

var
    auxArr: arrAuxiliar;
    arrPosibles : array[min..valoresPosibles,0..longitudPorValor] of string[6];
    i,j,w:integer;
begin


    ClrScr;

    for i:=1 to 6 do
    begin
    
        for j:=1 to 6 do
        begin
          
            for w:= 1 to 6 do 
            begin
          
                arrPosibles[i+j+w][auxArr[i+w+j]] := concat(IntToStr(i),'/',IntToStr(j),'/',IntToStr(w));
                auxArr[i+j+w] := auxArr[i+j+w] + 1;
            end;
        end;
    end;

    for i:=2 to valoresPosibles do
    begin
    
        for j:=1 to longitudPorValor do
        begin
            if(arrPosibles[i][j] <> '') then write('[',arrPosibles[i][j],']');
        end;
        
        writeln();  
    
    end;

end.
