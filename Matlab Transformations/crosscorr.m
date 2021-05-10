clc,clear all,close all;
x=[1 2 3 4];
h=[1 2 3 4 5];
%x=x(length(x):-1:1);
x=fliplr(x);
%y=zeros(length(x)+length(h)-1,1);
to=zeros((length(h)+length(x)-1),length(h));
temp=x;
for i=1:length(h)
     to(i:(length(x)+i-1),i)=temp;
end
y=to*h';
subplot(3,1,1),stem(x);
title('Cross correlation');
xlabel('n');ylabel('x(n)');
subplot(3,1,2),stem(h);
xlabel('n');ylabel('h(n)');


subplot(3,1,3),stem(y);

xlabel('n');ylabel('y(n)');

