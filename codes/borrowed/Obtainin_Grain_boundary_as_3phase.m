%Obtaining Grain Boundary and Precipitates as a 3 phase single image
%Needs read_dump function
%Needs Grain2Boundary function

%Parameters

size=[ 300 300 300];
for i=1:5
for ii=0:100
 
filename=['dump.pin.rod3.',num2str(i),'.',num2str(ii)]
%Obtain the data and reshape it

%Data=readVTI(filename,size);
Data=read_dump(filename,size);

%Find Grain Boundary as 3 separate images

[ BW, pr]=Grain2Boundary(Data); %finding all the boundaries
[ BWpr, ~]=Grain2Boundary(pr);  %finding the boundries of the precipitates
gb=BW-BWpr;                     %obtaining the grain boundaries without the boundaries of the precipitate
gb(gb==-1)=0;                   %acounting for errors

%Find Grain Boundary as 1 image with 3 pahses.

 phase3=zeros(300,300,300);
 phase3(gb==1)=1;
 phase3(pr==1)=2; %Phase 3 is the variable that has all three phase contained
                    %0 for grain, 1 for grain boundary, 2 for precipitate.
 filename1=['dump.pin.rod3_2.',num2str(i),'.',num2str(ii)]                   
 save([filename1,'.mat'],'phase3')
 

end


end

