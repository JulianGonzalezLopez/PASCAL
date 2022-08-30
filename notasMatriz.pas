program notasEnMatriz;

const
    alumnos = 25;
    columnas = 6;

var
    arreglo : array[1..alumnos+2,1..6] of integer;
    aux,i,j : integer;
    
begin
    randomize;
    aux := 0;
    for i:= 1 to alumnos do
    begin
        arreglo[i][1] := random(3999)+1;
    end;
    
    for i:=1 to alumnos do
    begin
    
        for j:=2 to columnas-1 do
        begin   
        
            arreglo[i][j] := random(9);
            aux := aux + arreglo[i][j];
        end;
        arreglo[i][6] := aux div 4;
        aux := 0;
    end;
    
    writeln('| LEGAJO | MATERIA1 | MATERIA2 | MATERIA3 | MATERIA4 | PROMEDIO |');
    
    for i:= 1 to alumnos do
    begin
        
        for j:=1 to columnas do
        begin
            if(j = 1) then
            begin
                if(arreglo[i][j]<10) then write('|---',arreglo[i][j],'---|')
                else if(arreglo[i][j]<100) then write('|---',arreglo[i][j],'---|')
                else if(arreglo[i][j]<1000) then write('|---',arreglo[i][j],'--|')
                else if (arreglo[i][j]>1000) then write('|--',arreglo[i][j],'--|');
            end
            
            else write('-----',arreglo[i][j],'----|');
        end;
        writeln;
        
    end;
    


end.