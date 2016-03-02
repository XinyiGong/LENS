%% Specify the parameters here
prnum=8;
parlist={'T','X','V','W','D','L','HAZ','dump.additive4'};

%% Segment the characters into the ctchprm
ctchprm=cell(size(rowname,1),prnum);
for fl=1:size(rowname,1);
    % Scaning the parameters from string
    pr=2;
    for i=2:length(rowname(fl,:));
        if rowname(fl,i)~=parlist{pr}
            ctchprm{fl,pr-1}=[ctchprm{fl,pr-1},rowname(fl,i)];
        else
            pr=pr+1;
        end
        if pr==prnum+1 
            for j=i+1:length(rowname(fl,:));
                ctchprm{fl,pr-1}=[ctchprm{fl,pr-1},rowname(fl,j)];
            end
            break
        end
    end
end

%% Need to be specified for different cases
prm=zeros(size(rowname,1),prnum);
for fl=1:size(rowname,1);
    prm(fl,1)=sscanf(ctchprm{fl,1},'%i-',[1,inf]);
    if ctchprm{fl,2}=='-'
        prm(fl,2)=1;
    else
        prm(fl,2)=0;
    end
    if size(strfind(ctchprm{fl,3},'-'),2)==1
        prm(fl,3)=sscanf(ctchprm{fl,3},'%i-',[1,inf]);
    else
        prm3=sscanf(ctchprm{fl,3},'%i-%i-',[2,inf]);
        prm(fl,3)=prm3(1)+prm3(2)/10;
    end
    for i=4:6
        prm(fl,i)=sscanf(ctchprm{fl,i},'%i-',[1,inf]);
    end
    prm(fl,7)=sscanf(ctchprm{fl,7},'AZ%i-',[1,inf]);
    prm(fl,8)=sscanf(ctchprm{fl,8},'ump.additive4.%i-',[1,inf]);

end