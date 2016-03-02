clear
close all
clc

cd('/Users/Gong/Documents/LENS/results/Var_72-structure_2pt_PCA');
load('72_2pt_PC_Var.mat');

% plot PCs

% % figure()
% % subplot(1,2,1)
% % scatter3(PC(:,1),PC(:,2),PC(:,3),'ro','filled')
% % hold on
% % 
% % grid on
% % axis equal
% % xlabel('PC 1','FontSize',12)
% % ylabel('PC 2','FontSize',12)
% % zlabel('PC 3','FontSize',12)
% % 
% % subplot(1,2,2)
% % scatter3(PC(:,1),PC(:,2),PC(:,3),'ro','filled')
% % hold on
% % 
% % grid on
% % axis equal
% % xlabel('PC 1','FontSize',12)
% % ylabel('PC 2','FontSize',12)
% % zlabel('PC 3','FontSize',12)


%plot variance
figure()
plot(Var)
xlabel('PC','FontSize',12)
ylabel('Variance','FontSize',12)

