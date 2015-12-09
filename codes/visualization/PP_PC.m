% PP7list(:,1)=(PP7(:)==5);
% PP7list(:,2)=(PP7(:)==20);
% PP7list(:,3)=(PP7(:)==35);
for i=1:36
fig=figure;
filename=['plot',num2str(i)];
scatter3(prm(showprm(4,:),5),prm(showprm(4,:),3),prm(showprm(4,:),7),20*ones(sum(showprm(4,:)),1),'r','filled');
view(5*i,30)
grid on
xlabel('D','FontSize',12)
ylabel('V','FontSize',12)
zlabel('HAZ','FontSize',12)
set(gca,'FontSize',12)
% h=title('Procee Parameter - Principle Component');
% set(h,'FontSize',12);
hold on
scatter3(prm(~showprm(4,:),5),prm(~showprm(4,:),3),prm(~showprm(4,:),7),20*ones(sum(~showprm(4,:)),1),'b','filled');
print(fig,filename,'-dpng');
end