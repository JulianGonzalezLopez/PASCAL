{
    Generar mediante un programa una matriz de 24 x 70.
    a- rellenar toda la matriz con el char de la letra 'a'
    b- rellenar 1 fila con el caracter '*' El numero de fila se debe ingresar por consola
    c- Imprimir la matriz obtenida
}

program mInversa;

const 
    filas = 4;
    columnas = 3;
    
type matriz43 = array[1..filas,1..columnas] of integer;
     matriz34 = array[1..columnas,1..filas] of integer;

var
    i,j: integer;
    m1 : matriz43;
    m2 : matriz34;

begin
    randomize;
    for i:= 1 to filas do
    begin
    
        for j:=1 to columnas do
        begin
        
            m1[i,j] := random(11)+1;        
        end;
    end;


    for i:= 1 to filas do
    begin
    
        for j:=1 to columnas do
        begin
        
            m2[j,i] := m1[i,j]; 
        end;
    end;
    
    writeln('Matriz 4 x 3');

    for i:= 1 to filas do
    begin
    
        for j:=1 to columnas do
        begin
        
            write('-',m1[i,j],'-');
        end;
        writeln;
    end;

    writeln('Matriz 3 x 4');

    for i:= 1 to columnas do
    begin
    
        for j:=1 to filas do
        begin
        
            write('-',m2[i,j],'-');
        end;
        writeln;
    end;



end.
    