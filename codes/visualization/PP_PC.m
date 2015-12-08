PP7list(:,1)=(PP7(:)==5);
PP7list(:,2)=(PP7(:)==20);
PP7list(:,3)=(PP7(:)==35);
figure()
scatter3(prm(PP7list(:,3),1),prm(PP7list(:,3),3),PC(PP7list(:,3),1),20*ones(size(prm(PP7list(:,3),1))),'filled');
grid on
xlabel('T','FontSize',12)
ylabel('V','FontSize',12)
zlabel('PC 1','FontSize',12)
set(gca,'FontSize',12)
h=title('Procee Parameter - Principle Component');
set(h,'FontSize',12);
hold on