t=5;
x=zeros(1,t);
x(1,1)=Var(1,1);
for i=2:t
    x(1,i)=x(1,i-1)+Var(i,1);
end
plot(x(1,1:t));