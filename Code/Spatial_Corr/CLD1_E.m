% Attacking Problem: pick a chord out of all the chords(including 'edge chords'), what is the probability of picking a
% chord with a particular length?
% 'BWdata' MUST be the variable name of grain boundary structure where '1' is grain boundary and '0' is grain
% 'hist' outputs six columes: x,y,z and 'edge chords' in x,y,z directions
% 'stat' outputs six by one matrix: each colunm represents the fraction of
% chords in x,y,z direction and 'edge chords' in x,y,z directions
function [hist,stat]=CLD1_E(BWdata)


xlength=size(BWdata,1);
ylength=size(BWdata,2);
zlength=size(BWdata,3);



class=[1:max([xlength,ylength,zlength])]';

chord=0;

histx=zeros(numel(class),1);
histy=zeros(numel(class),1);
histz=zeros(numel(class),1);
histxe=zeros(numel(class),1);
histye=zeros(numel(class),1);
histze=zeros(numel(class),1);

% stx=1;
% sty=1;
% stz=1;
% x=0;
% y=0;
% z=0;

% Obtaining Histogram for X direction

for ndz=1:zlength
    
    for ndy=1:ylength
        %st marks the states point of grains:2-boundary;1-inside
        %grain;0-beginning/ending segment
        st=0;
        chord=0;
        %Starting point
        if BWdata(1,ndy,ndz)==1
            st=2;
        else
            chord=1;
            st=0;
        end
        
        %Middle part
        for ndx=2:(xlength-1) 
            if BWdata(ndx,ndy,ndz)==1
                if st==1
                    histx(chord,1)=histx(chord,1)+1;
                    chord=0;
                    st=2;
                elseif st==0
                    histxe(chord,1)=histxe(chord,1)+1;
                    chord=0;
                    st=2;
                end
            elseif st
                    chord=chord+1;
                    st=1;
            elseif st==0
                chord=chord+1;
            end
        end
        
        %Last point
       if BWdata(xlength,ndy,ndz)==1 && st==1
           histx(chord,1)=histx(chord,1)+1;
           chord=0;
           st=2;
       elseif BWdata(xlength,ndy,ndz)==0
           histxe(chord+1,1)=histxe(chord+1,1)+1;
           chord=0;
           st=0;
       end
    end
end


% Obtaining Histogram for Y direction
for ndz=1:zlength
    
    for ndx=1:xlength
        %st marks the states point of grains:2-boundary;1-inside
        %grain;0-beginning/ending segment
        st=0;
        chord=0;
        %Starting point
        if BWdata(ndx,1,ndz)==1
            st=2;
        else
            chord=1;
            st=0;
        end
        
        %Middle part
        for ndy=2:(ylength-1)
            if BWdata(ndx,ndy,ndz)==1
                if st==1
                    histy(chord,1)=histy(chord,1)+1;
                    chord=0;
                    st=2;
                elseif st==0
                    histye(chord,1)=histye(chord,1)+1;
                    chord=0;
                    st=2;
                end
            elseif st
                    chord=chord+1;
                    st=1;
            elseif st==0
                chord=chord+1;
            end
        end
        
        %Last point
       if BWdata(ndx,ylength,ndz)==1 && st==1
           histy(chord,1)=histy(chord,1)+1;
           chord=0;
           st=2;
       elseif BWdata(ndx,ylength,ndz)==0
           histye(chord+1,1)=histye(chord+1,1)+1;
           chord=0;
           st=0;
       end
    end
end

% Obtaining Histogram for Z direction

for ndy=1:ylength
    
    for ndx=1:xlength
        %st marks the states point of grains:2-boundary;1-inside
        %grain;0-beginning/ending segment
        st=0;
        chord=0;
        %Starting point
        if BWdata(ndx,ndy,1)==1
            st=2;
        else
            chord=1;
            st=0;
        end
        
        %Middle part
        for ndz=2:(zlength-1) %st marks the starting point of grains that are not part of the periodic boundary
            if BWdata(ndx,ndy,ndz)==1
                if st==1
                    histz(chord,1)=histz(chord,1)+1;
                    chord=0;
                    st=2;
                elseif st==0
                    histze(chord,1)=histze(chord,1)+1;
                    chord=0;
                    st=2;
                end
            elseif st
                    chord=chord+1;
                    st=1;
            elseif st==0
                chord=chord+1;
            end
        end
        
        %Last point
       if BWdata(ndx,ndy,zlength)==1 && st==1
           histz(chord,1)=histz(chord,1)+1;
           chord=0;
           st=2;
       elseif BWdata(ndx,ndy,zlength)==0
           histze(chord+1,1)=histze(chord+1,1)+1;
           chord=0;
           st=0;
       end
    end
end
sumx=sum(histx)+sum(histxe);
sumy=sum(histy)+sum(histye);
sumz=sum(histz)+sum(histze);
histx=histx./sumx;
histy=histy./sumy;
histz=histz./sumz;
histxe=histxe./sumx;
histye=histye./sumy;
histze=histze./sumz;
hist=[histx+histxe histy+histye histz+histze];
stat=[sum(histxe) sum(histye) sum(histze)];
