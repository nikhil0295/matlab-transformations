clc;
clear all;
close all;
x=[1 1 1 1];
n=length(x);
for k= 0:n-1
    for i= 0:(length(x)-1)
        temp(i+1)=x(i+1)*exp((-j*2*pi*i*k)/n);
    end
    X(k+1)=sum(temp);
end
disp('dft');X
for k=0:n-1
    for i=0:(length(x)-1)
   temp(i+1)=X(i+1)*exp((j*2*pi*i*k)/n);
    end
    z(k+1)=sum(temp);
end
z=z/n;
disp('idft');