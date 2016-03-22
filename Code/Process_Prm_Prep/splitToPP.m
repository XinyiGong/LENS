v7p5ind={zeros(377,1),zeros((1799-377),1)};
cnt=1;
cntr=1;
for i=1:1799
    if prm(i,3)==7.5
        v7p5ind{1,1}(cnt,1)=i;
        cnt=cnt+1;
    else
        v7p5ind{1,2}(cntr,1)=i;
        cntr=cntr+1;
    end
end