clc,clear all,close all;
x=input('enter the input sequence');
p=length(x);
N=p;
l=log2(N);
tw=exp(-j*2*pi*(0:(N/2)-1)/N);
for level=l:-1:1
    L=2^level;
    twlvl=tw(1:(N/L):(N/2));
    for k=0:L:N-L
        for n=0:L/2-1
            A=x(n+k+1);
            B=x(n+k+(L/2)+1);
            x(n+k+1)=A+B;
            x(n+k+(L/2)+1)=(A-B)*twlvl(n+1);
        end
    end
end
XK=bitrevorder(x);
XK
