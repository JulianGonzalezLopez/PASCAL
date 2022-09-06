{
    Generar mediante un programa una matriz de 24 x 70.
    a- rellenar toda la matriz con el char de la letra 'a'
    b- rellenar 1 fila con el caracter '*' El numero de fila se debe ingresar por consola
    c- Imprimir la matriz obtenida
}

program m2470;

const 
    filas = 24;
    columnas = 70;
var
    arreglo: array[1..filas,1..columnas] of char;
    i,j : integer;
    
begin

    for i:= 1 to filas do
    begin
        
        for j:= 1 to columnas do
        begin
        
            arreglo[i,j] := 'a';
        end;
    end;

    writeln('Ingrese la fila a modificar: ');
    readln(j);
    
    for i:= 1 to columnas do
    begin
        arreglo[j,i] := '*';
    end;


    for i:= 1 to filas do
    begin
        
        for j:= 1 to columnas do
        begin
        
            write(arreglo[i,j]);
        end;
        writeln;
    end;


end.

