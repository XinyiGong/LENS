% filename is a string
% 'BWdata' MUST the variable name of grain boundary structure where '1' is grain boundary and '0' is grain
function [hist]=chordlengthdist(filename)

load(filename)

xlength=size(BWdata,1);
ylength=size(BWdata,2);
zlength=size(BWdata,3);



class=[1:max([xlength,ylength,zlength])]';

chord=0;

histx=zeros(numel(class),1);
histy=zeros(numel(class),1);
histz=zeros(numel(class),1);

% stx=1;
% sty=1;
% stz=1;
% x=0;
% y=0;
% z=0;

%% Obtaining Histogram for X direction

for ndz=1:zlength
    
    for ndy=1:ylength
        
        %Starting point
        if BWdata(1,ndy,ndz)==1
            chord=0;
        else
            chord=chord+1;
        end
        
        %Middle part
        for ndx=2:(xlength-1) %st marks the starting point of grains that are not part of the periodic boundary
            if BWdata(ndx,ndy,ndz)==1
                if BWdata(ndx-1,ndy,ndz)==0
                    histx(chord+1,1)=histx(chord+1,1)+1;
                    chord=0;
                end
            else
                chord=chord+1;
            end
        end
        
        %Last point
       if BWdata(xlength,ndy,ndz)==0
           histx(chord+1,1)=histx(chord+1,1)+1;
           chord=0;
       elseif BWdata(xlength-1,ndy,ndz)==0
           histx(chord+1,1)=histx(chord+1,1)+1;
           chord=0;
       end
    end
end


% Obtaining Histogram for Y direction
for ndz=1:zlength
    
    for ndx=1:xlength
        
        %Starting point
        if BWdata(ndx,1,ndz)==1
            chord=0;
        else
            chord=chord+1;
        end
        
        %Middle part
        for ndy=2:(ylength-1) %st marks the starting point of grains that are not part of the periodic boundary
            if BWdata(ndx,ndy,ndz)==1
                if BWdata(ndx,ndy-1,ndz)==0
                    histy(chord+1,1)=histy(chord+1,1)+1;
                    chord=0;
                end
            else
                chord=chord+1;
            end
        end
        
        %Last point
       if BWdata(ndx,ylength,ndz)==0
           histy(chord+1,1)=histy(chord+1,1)+1;
           chord=0;
       elseif BWdata(ndx,ylength-1,ndz)==0
           histy(chord+1,1)=histy(chord+1,1)+1;
           chord=0;
       end
    end
end

% Obtaining Histogram for Z direction

for ndy=1:ylength
    
    for ndx=1:xlength
        
        %Starting point
        if BWdata(ndx,ndy,1)==1
            chord=0;
        else
            chord=chord+1;
        end
        
        %Middle part
        for ndz=2:(zlength-1) %st marks the starting point of grains that are not part of the periodic boundary
            if BWdata(ndx,ndy,ndz)==1
                if BWdata(ndx,ndy,ndz-1)==0
                    histz(chord+1,1)=histz(chord+1,1)+1;
                    chord=0;
                end
            else
                chord=chord+1;
            end
        end
        
        %Last point
       if BWdata(ndx,ndy,zlength)==0
           histz(chord+1,1)=histz(chord+1,1)+1;
           chord=0;
       elseif BWdata(ndx,ndy,zlength-1)==0
           histz(chord+1,1)=histz(chord+1,1)+1;
           chord=0;
       end
    end
end

histx=histx./sum(histx);
histy=histy./sum(histy);
histz=histz./sum(histz);
histtot=(histx+histy+histz)./sum(histx+histy+histz);
hist=[histx histy histz histtot];