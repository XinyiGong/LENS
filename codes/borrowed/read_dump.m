function Data=read_dump(filename,size)

delimiterIn = ' ';
headerlinesIn=9;
current=importdata(filename,delimiterIn,headerlinesIn);
grainid=current.data(:,1:2);
[~,I]=sort(grainid(:,1),1);

grainid=grainid(I,:);

Data=reshape((grainid(:,2)),size);
end

