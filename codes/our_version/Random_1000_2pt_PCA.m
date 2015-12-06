%{
a=1799.*rand(1000,1);
a=ceil(a);
A=sort(a,'ascend')
%this produces duplicate integers. :(


a=randi([1 1799],1000,1);
A=sort(a,'ascend');
%}

a = randperm(1799,1000)';
A=sort(a,'ascend');