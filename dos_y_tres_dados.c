#include <stdio.h>
#include <math.h>

void dosDados(){
    int largo; //max length of the dice. it's used to calculate the length of the arrays
    int min = 2; //minor value posible
    

    printf("Ingrese el largo de los dados: ");
    scanf("%d",&largo);

    char valoresPosiblesFinal[largo*2+1][(largo*2+min)/2][4];//array where the sets n/n are stored
    int auxArr[largo*2+1]; //array to know how many elements are there in each set (ie: if I saved 1/2 I don't want to overflow it with 2/1)

    for(int i = 0; i <= largo*2+1; i++){  //loop to emulate the firt dice
    
        for(int j = 0; j <=(largo*2+min)/2; j++){  //loop to emulate the second dice
        
            sprintf(valoresPosiblesFinal[i][j],"---");  //I declare that the value of valoresPosiblesFinal is "%d/%d"
          
        }
    }

    for(int i = 0; i < largo*2+1;i++){
        auxArr[i] = 0;
    }
    
    for(int i = 0; i < largo-1; i++){
        auxArr[i] = 0;
    } //inialice the array auxArr to avoid erratic behavior

    for(int i = 1; i <= largo; i++){  //loop to emulate the firt dice
    
        for(int j = 1; j <= largo; j++){  //loop to emulate the second dice
        
            if((i+j >= min) && (i+j<=largo*2)){ //Used to know if i+j is within the posible values 
            
                sprintf(valoresPosiblesFinal[i+j][auxArr[i+j]],"%d/%d",i,j);  //I declare that the value of valoresPosiblesFinal is "%d/%d"
                auxArr[i+j]++; 
            }
        }
    }

    for(int i = 0; i < largo*2+1; i++){
        for(int j = 0; j < (largo*2+min)/2;j++){
            printf("[ %s ]",valoresPosiblesFinal[i][j]);
        }
        printf("\n");
    }
}



void tresDados(){
    int largo;
    int min = 3;
    
    printf("Ingrese el largo de los dados: ");
    scanf("%d",&largo);
    
    int largo3mas1 = largo*3+1;
    int largoentre3mas = (largo*largo*largo)/2;
    char valoresPosiblesFinal[largo3mas1][largoentre3mas][6];//array where the sets n/n are stored
    int auxArr[largo3mas1]; //array to know how many elements are there in each set (ie: if I saved 1/2 I don't want to overflow it with 2/1)

    for(int i = 0; i <= largo3mas1; i++){ 
    
        for(int j = 0; j <= largoentre3mas; j++){ 
        
            sprintf(valoresPosiblesFinal[i][j],"-----"); 
          
        }
    }
    
    for(int i = 0; i < largo3mas1;i++){
        auxArr[i] = 0;
    }
    
    for(int i = 1; i <= largo; i++){
        
        for(int j = 1; j <= largo; j++){
            
            for(int w = 1; w <= largo;w++){
                
                if((i+j+w >= min) && (i+j+w<=largo*3)){ //Used to know if i+j is within the posible values 
                
                    sprintf(valoresPosiblesFinal[i+j+w][auxArr[i+j+w]],"%d/%d/%d",i,j,w);
                    auxArr[i+j+w]++; 
                }
            }
        }
    }
    
    for(int i = 3; i < largo3mas1; i++){
        
        for(int j = 0; j < largoentre3mas/2;j++){
            
            printf("[ %s ]",valoresPosiblesFinal[i][j]);
        }
        
        printf("\n");
    }
    
}




int main(){
    
    tresDados();
}