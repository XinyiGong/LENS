function A=readdot4(file,domainsize)
A=dlmread(file,' ',9,1);
A=A(:,1);
A=reshape(A,domainsize);
end