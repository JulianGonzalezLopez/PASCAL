{
    hacer un programa que genere una matriz de 5x5 y sea
    llenada por numeros random. Luego mostrar la suma de la diagonal ṕrincial
    de la matriz
}


program sumDiagonalP;

const largo = 5;

var
    i,j,tot,sec : integer;
    arreglo : array[1..largo,1..largo] of integer;
begin 
    randomize;
    tot := 0;
    sec := 0;

    for i:= 1 to largo do
    begin
    
        for j:= 1 to largo do
        begin
            
            arreglo[i,j] := random(9) + 1;   
        end;
    end;

    for i:= 1 to largo do
    begin
    
        for j:= 1 to largo do
        begin
            
            if(i = j) then
            begin
                
                tot := tot + arreglo[i,j];
            end;
        end;
    end;

    for i:= 1 to largo do
    begin
    
        for j:= 1 to largo do
        begin
        
            write('--',arreglo[i,j],'--') ;
        end;
        writeln;
    end;
    
    writeln('Sumatoria de la diagonal principal: ',tot);
    
    j:=5;
    for i:=1 to largo do
    begin
    
        sec := sec + arreglo[j,i];
        j := j - 1;
    end;
    
    writeln('Sumatoria de la diagonal secundaria: ',sec);

end.