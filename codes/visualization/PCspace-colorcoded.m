PPlist(:,1)=(prm(:,7)==5);
PPlist(:,2)=(prm(:,7)==20);
PPlist(:,3)=(prm(:,7)==35);

% % for i=1:72
fig=figure;
% % filename=['plot',num2str(i)];
s1=scatter3(PC(PPlist(:,1),1),PC(PPlist(:,1),2),PC(PPlist(:,1),3),20*ones(length(PC(PPlist(:,1),3)),1),'r','filled');
% 20*ones(length(PPlist(:,1)),1),
view(-135,65)
grid on
xlabel('PC 1','FontSize',20)
ylabel('PC 2','FontSize',20)
zlabel('PC 3','FontSize',20)
set(gca,'FontSize',20)
% h=title('Procee Parameter - Principle Component');
% set(h,'FontSize',12);
hold on
s2=scatter3(PC(PPlist(:,2),1),PC(PPlist(:,2),2),PC(PPlist(:,2),3),20*ones(length(PC(PPlist(:,2),3)),1),'b','filled');
% 20*ones(length(PPlist(:,2)),1),
hold on
s3=scatter3(PC(PPlist(:,3),1),PC(PPlist(:,3),2),PC(PPlist(:,3),3),20*ones(length(PC(PPlist(:,3),3)),1),'g','filled');
% 20*ones(length(PPlist(:,3)),1),
% % print(fig,filename,'-dpng');
% % end
legend([s1 s2 s3],'1','2','3')