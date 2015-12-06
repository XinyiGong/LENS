    T;
    X;
    V;
    W;
    D;
    L;
    HAZ;
% Scaning the parameters from string
    prm(fl,1:4)=sscanf(filename,'T5-X-V2-5-W%i-D%i-L%i-HAZ%i-*',[4,inf]);
    prm(fl,5)=fileindex;
    
    

    
    