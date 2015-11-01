%{
LENS PCA script
%}
clear all
close all 
%declare the homefolder: T20W60 containing D, L, HAZ folders
filepath='C:\Users\Andrey\Desktop\ME8883_Materials_Informatics\T20W60 files'

A=dir(filepath);     %create Struct A with directory names
ASize=StructSize(A);     %obtain number of subfolders
filepath=[filepath,'\',A(3).name];
filename=[A(3).name];

D=dir(filepath); %contains folder and irrelevant.DS_Store files
DSize=StructSize(D);
%while i=<Dsize 
    if D(4).isdir==1        %ignore .DS_Store files
    filepath=[filepath,'\',D(4).name];
    filename=[filename,'-',D(4).name];
    else balls=1;
    end
%i=i+1
%end

L=dir(filepath); %contains folder and irrelevant.DS_Store files    
LSize=StructSize(L);
%while i=<LSize 
    if L(4).isdir==1        %ignore .DS_Store files
    filepath=[filepath,'\',L(4).name];
    filename=[filename,'-',L(4).name];
    else balls=1;
    end
%i=i+1
%end

HAZ=dir(filepath);  %contains folder and irrelevant.DS_Store files   
HAZSize=StructSize(HAZ);
tpath=filepath;
tname=filename;
for i=4:HAZSize
    i
    filepath=tpath;
    filename=tname;
    if HAZ(i).isdir==1        %ignore .DS_Store files
    filepath=[filepath,'\',HAZ(i).name];
    filename=[filename,'-',HAZ(i).name];
    else balls=1;
    end
    
    ADD=dir(filepath);  %contains folder and irrelevant.DS_Store files   
    ADDSize=StructSize(ADD); 
    if ADD(3).isdir==1        %ignore .DS_Store files
    filepath=[filepath,'\',ADD(3).name]
    filename=[filename,'-',ADD(3).name]
    else
        balls=1
        filepath=[filepath,'\',ADD(4).name]
        filename=[filename,'-',ADD(4).name]
    end
    
    ADDFOL=dir(filepath)  %contains folder and irrelevant.DS_Store files       
    filepath=[filepath,'\',ADDFOL(3).name]
    data=read_dump(filepath,[300, 300, 200]);
    imagesc(data(:,:,100))
 save_file=['test',num2str(i),'.']  
 save([save_file,'.mat'],'data')
    
end    

%i=i+1
%end
%{
for n = 2:6
    x(n) = 2 * x(n - 1);
end
%}



%dump.additive4.4
