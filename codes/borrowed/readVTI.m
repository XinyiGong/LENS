function Data=readVTI(filename,size)
current=importdata(filename);
Data=reshape(current.data,size);
end

