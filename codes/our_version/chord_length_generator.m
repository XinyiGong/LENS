close all
clear
clc
tic
%filepath='C:\Users\xgong42\Documents\first_72_Test';
filepath='C:\Users\Andrey\Desktop\Theron_presentation\GB72';
savepath='C:\Users\Andrey\Desktop\Theron_presentation\CLD2';

for i=1:72
filename=[filepath,'\',num2str(i),'.mat'];
load(filename);
%[hist]=chordlengthdist(BWdata);
[hist]=chordlengthdist2(BWdata);

% savepath='C:\Users\xgong42\Documents\chordlength_72_Test';
% save([savepath,'\chordlength_',filename],'hist');

save([savepath,'\',num2str(i),'.mat'],'hist');
save([savepath,'\',num2str(i),'.mat'],'filename','-append');
end
toc