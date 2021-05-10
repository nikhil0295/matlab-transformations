clc,clear all,close all;
x=input('enter the sequence: ');
%N=input('enter the required length of dft: ');
N=length(x);
%if(a<N)
%   x=[x zeros(1,(N-a))];
%end;
x=bitrevorder(x);
n=log2(N);
X=zeros(1,N);
for m=1:1:n
    l=2^(m-1);
    i=1;
    while(i<=(N-l))
        for k=0:1:(l-1)
            X(i)=x(i)+x(i+l)*exp(-j*2*pi*k/N*(2^(n-m)));
            X(i+l)=x(i)-x(i+l)*exp(-j*2*pi*k/N*(2^(n-m)));
            i=i+1;
            if(k==(l-1))
                i=i+l;
            end;
        end;
    end;
    x=X;
end;
disp('dit of x');X
