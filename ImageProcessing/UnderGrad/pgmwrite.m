function pgmwrite(I,w,h,l,mode)
%*****************************************************
% Title:  QMUL_pgmwrite
% Input Parameters: 
%                I: Matrix to write in pgm
%            (w,h): dimension of matrix
%                l: gray levels
%             mode: ASCII or Binary (1 for Ascii and 0 for Binary)
% Description: This file stores input matrix into a .pgm file

% open the file in read mode
if (mode == 1) ; % Ascii flag
    f= fopen('outascii.pgm','w');
    fprintf(f,'P2\n');
    fprintf(f,'#outascii.pgm\n');
    fprintf(f,'# image created by Mincong Zhang\n');
    fprintf(f,'\n# image width\n');
    fprintf(f,'%i',w);
    fprintf(f,'\n# image height\n');
    fprintf(f,'%i',h);
    fprintf(f,'\n# image height\n');
    fprintf(f,'%i',l);    
    fprintf(f,'\n');
    
    for i=1:w      
        for j=1:h
            fprintf(f,' %s ',num2str(I(i,j)));
         fprintf(f,'\n');                     
        end
    end    
  
else
    f= fopen('outbinary.pgm','w');
    fprintf(f,'P5\n');
    fprintf(f,'#outbinary.pgm\n');
    fprintf(f,'# image created by Mincong Zhang\n');
    fprintf(f,'\n# image width\n');
    fprintf(f,'%i',w);
    fprintf(f,'\n# image height\n');
    fprintf(f,'%i',h);
    fprintf(f,'\n# image height\n');
    fprintf(f,'%i',l);    
    fprintf(f,'\n');
    
    for i=1:w      
        for j=1:h
            fprintf(f,'%c',I(i,j));                    
        end
    end    
  
end
