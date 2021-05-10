clc,clear all,close all;
x=[1 2 3 4];
fx=flip(x);
%y=zeros(length(x)+length(h)-1,1);
to=zeros((length(fx)+length(x)-1),length(fx));
temp=x;
j=0;
for i=1:length(fx)
     to(i:(length(x)+j),i)=temp;
    j=j+1;
end
y=to*fx(:);
subplot(2,1,1);
stem(x);
subplot(2,1,2);
stem(y);

