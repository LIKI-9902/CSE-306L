#include<stdio.h>
#include<stdlib.h>
int main()
{
    int s=0,i=0;
    char c, input[20];
    printf("Enter input string");
    scanf("%s",input);
    while((c=input[i++])!='\0')
    {
        switch(s)
        {
            case 0: if(c=='a')
                        s=1;
                    else if(c=='b')
                        s=3;
                    else
                    {
                        printf("Invalid");
                        exit(0);
                    }
                    break;
            case 1: if(c=='a')
                        s=2;
                    else if(c=='b')
                        s=3;
                    else
                    {
                        printf("Invalid");
                        exit(0);
                    }

                    break;
            case 2: if(c=='a')
                        s=2;
                    else if(c=='b')
                        s=3;
                    else
                    {
                        printf("Invalid");
                        exit(0);
                    }
                    break;
            case 3: if(c=='a')
                        s=1;
                    else if(c=='b')
                        s=1;
                    else
                    {
                        printf("Invalid");
                        exit(0);
                    }
                    break;
            case 4: if(c=='a')
                        s=1;
                    else if(c=='b')
                        s=4;
                    else
                    {
                        printf("Invalid");
                        exit(0);
                    }
                    break;       
        }
        
    }
    if (s==2||s==4)
     printf("string is accepted");
    else{
        printf("string isn'taccepted");
    }
    
    
    

}