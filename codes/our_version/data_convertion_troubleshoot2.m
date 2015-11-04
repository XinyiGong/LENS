clear
clc
close all

cd('C:\Users\xgong42\Documents\MATIN_struct');
 load 56;
 a1=BWdata;
 a2=filename;
 
 load 57;
 b1=BWdata;
 b2=filename;
 
 c1=a1-b1;
 c2=a2-b2;
 
 for l=length(c2)
     if c2(l)
         disp('Name not match');
         return
     end
 end
 
 input('Finish checking name. Hit anykey to check BWdata');
 
 for i=1:300
     for j=1:300
         for k=1:200
             if c1(i,j,k)
                 disp('BWdata not match');
                 disp('i:');
                 disp(i);
                 disp('j:');
                 disp(j);
                 disp('k:');
                 disp(k);
                 return
             end
         end
     end
 end
 
 