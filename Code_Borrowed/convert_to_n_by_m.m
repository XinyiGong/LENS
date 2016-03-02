%convert n(2160 in this case) 1*m arrays to n*m matrix
clear;
load('1');
clm=size(data);
clm=clm(1,2);
alldata=zeros(2160,clm);
for i=1:2160;
    load(num2str(i));
    alldata(i,:)=data;
end