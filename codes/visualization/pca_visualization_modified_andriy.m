clear
clc
close all

% Change directory to the folders with files. This is directory for
% Yuksel's computer. Before running the code change this directory name.
cd('/Users/Gong/Documents/Gross_Landfill/10_21_2015');

% Get the list for mat files
filelist=dir('*.mat');

% Initialization of string matrix for filenames
dataname={};

% Initialization of parameter matrix
prm=zeros(size(filelist,1),5);

for fl=1:length(filelist)
    
    % Loading the file
    load(filelist(fl).name,'filename');
    
    % Extracting file index from filename
    fin=char(filelist(fl).name);
    fileindex=str2double(fin(1:end-4));
    
    % Concatanating the filenames to arrays
    dataname=[dataname; filename];
    
    % Scaning the parameters from string
    prm(fl,1:4)=sscanf(filename,'T5-X-V2-5-W%i-D%i-L%i-HAZ%i-*',[4,inf]);
    prm(fl,5)=fileindex;
    
end

% Parameter strings for legend
parleglist={'W','D','L','HAZ'}.';

% Settinf the parameter matrix by sorting the 5th column
[~,I]=sort(prm(:,5));
prm=prm(I,:);

% Changing the directory. This is directory for Yuksel's computer. Before
% running the codechange this directory name.
cd('/Users/Gong/Documents/LENS/results/Plot_72-structure_2pt_PCA')

% Loading the PCA matrix
load 72pt_PC.mat

% Specifying the parameter (this is the parameter you will select for
% different visualization
parameter=4;
% Finding the unique numbers in that parameters (number of different
% classes and eventually the number of colors in visualizations
pl=unique(prm(:,parameter));
% Generating a colormap for PCA visualization. If you have only 2 different
% numbers in one parameter, the visualization will have only 2 colors
cmap=hsv(length(pl));

figure
parleg={};
subplot(1,2,1)
for ii=1:length(pl)
    plot3(PC(prm(:,parameter)==pl(ii),1),PC(prm(:,parameter)==pl(ii),2),...
        PC(prm(:,parameter)==pl(ii),3),'kd','MarkerFaceColor',cmap(ii,:),'MarkerSize',8)
    hold on
    parleg=[parleg; [char(parleglist(parameter)) ' ' num2str(pl(ii))]];
end
grid on
axis equal
xlabel('PC 1','FontSize',12)
ylabel('PC 2','FontSize',12)
zlabel('PC 3','FontSize',12)
set(gca,'FontSize',12)
h=legend(parleg,'Orientation','Horizontal');
set(h,'FontSize',12);

% Axis image just scales the axes of the image. It makes it more realistic
% but if you dont want it you can basically turn it off by sending those
% lines to comment.

% parleg variable is just recursively written inside the for loop for the
% automatic creation of legend.

subplot(1,2,2)
for ii=1:length(pl)
    plot3(PC(prm(:,parameter)==pl(ii),1),PC(prm(:,parameter)==pl(ii),2),...
        PC(prm(:,parameter)==pl(ii),3),'kd','MarkerFaceColor',cmap(ii,:),'MarkerSize',8)
    hold on
    
end
grid on
axis equal
xlabel('PC 1','FontSize',12)
ylabel('PC 2','FontSize',12)
zlabel('PC 3','FontSize',12)
set(gca,'FontSize',12)

% save process parameter information correspond to PC matrix
prm=prm(:,1:4);
save('parameter','prm');