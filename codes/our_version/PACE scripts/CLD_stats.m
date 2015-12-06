%{
associate the file names with the chord-length
statistics
%}

clear all
clc

loadpath='/nv/hp22/xgong42/scratch/CLD_new/CLD1N';
savepath='/nv/hp22/xgong42/scratch/CLD_info/CLD1inf';

%C=cell(1799,5);
C=cell(3,5);

for i=1:3%1799
load(['loadpath','/',num2str(i),'.mat']);
C(i,1)={i}; %filenumber
C(i,2)={'filename'}; %filename
C(i,3)={stat(4)}; %fraction in x
C(i,4)={stat(5)}; %fraction in y
C(i,5)={stat(6)}; %fraction in z
end

save(['savepath','/CLD1info.mat'],'C');