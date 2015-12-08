%% Set X,Y range and term number
X=[5:35];
Y=[2:16];
termnumb=15;

for i=1:size(Y,2)
    X(i,:)=X(1,:);
end
for i=1:size(X,2)
    Y(i,:)=Y(1,:);
end
for i=1:termnumb
    X(:,:,i)=X(:,:,1);
    Y(:,:,i)=Y(:,:,1);
end


%% Get Z

%Fixing patch for LENS project
ppvalue=35;
C=ppvalue*ones(termnumb,1);
C=C.^reg.PowerMatrix(:,3);
C=C.*reg.Coefficients;



x=zeros(termnumb,1);
y=zeros(termnumb,1);
Z=zeros(size(Y,2),size(X,2));

for i=1:size(X,2)
    for j=1:size(Y,2)
        x(:,1)=X(j,i,:);
        y(:,1)=Y(i,j,:);
        Z(j,i)=sum((x.^reg.PowerMatrix(:,1)).*(y.^reg.PowerMatrix(:,2)).*C);
    end
end

%% Plot surface
% figure()
surf(X(1,:,1),Y(1,:,1),Z)
% set(h, 'EdgeColor','none')
grid on
shading interp
xlabel('T','FontSize',12)
ylabel('V','FontSize',12)
zlabel('PC 1','FontSize',12)
set(gca,'FontSize',12)
h=title('Procee Parameter - Principle Component');
set(h,'FontSize',12);
hold on


