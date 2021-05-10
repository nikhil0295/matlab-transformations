clc;
clear all;
close all;
a=input('enter the sequence x(n)=');
b=input('enter the sequence h(n)=');
stem(a);
n1=length(a);
n2=length(b);
N=max(n1,n2);
x=[a zeros(1,(N-n1))];
for i=1:N
    k=i;
    for j=1:n2
        H(i,j)=x(k)*b(j);
        k=k-1;
        if k==0;
            k=n;
        end 
    end
end
y=zeros(1,N);
M=H';
for j=1:N
    for i=1:N2
        y(j)=M(i,j)+y(j);
    end
end
disp('op is y(n)=');
disp(y);
subplot(3,1,1),stem(a);
xlabel('n');ylabel('x(n)');
subplot(3,1,2),stem(b);
xlabel('n');ylabel('h(n)');
subplot(3,1,3),stem(y);
xlabel('n');ylabel('y');
title('cklar con');