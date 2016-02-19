PP1list(:,1)=(prm(:,7)==5);
PP1list(:,2)=(prm(:,7)==20);
PP1list(:,3)=(prm(:,7)==35);
% PP1list(:,4)=(prm(:,4)==90);
% PP1list(:,5)=(prm(:,3)==15);

% % for i=1:72
fig=figure;
% % filename=['plot',num2str(i)];
scatter3(PC(PP1list(:,1),1),PC(PP1list(:,1),2),PC(PP1list(:,1),3),20*ones(length(1799),1),'r','filled');
% % view(5*i,30)
grid on
xlabel('PC 1','FontSize',20)
ylabel('PC 2','FontSize',20)
zlabel('PC 3','FontSize',20)
set(gca,'FontSize',20)
% h=title('Procee Parameter - Principle Component');
% set(h,'FontSize',12);
hold on
scatter3(PC(PP1list(:,2),1),PC(PP1list(:,2),2),PC(PP1list(:,2),3),20*ones(length(1799),1),'b','filled');
hold on
scatter3(PC(PP1list(:,3),1),PC(PP1list(:,3),2),PC(PP1list(:,3),3),20*ones(length(1799),1),'g','filled');
% hold on
% scatter3(PC(PP1list(:,4),1),PC(PP1list(:,4),2),PC(PP1list(:,4),3),20*ones(length(1799),1),'k','filled');
% hold on
% scatter3(PC(PP1list(:,5),1),PC(PP1list(:,5),2),PC(PP1list(:,5),3),20*ones(length(1799),1),'y','filled');

% % print(fig,filename,'-dpng');
% % end