clc;
clear all;
close all;
x=[1 3 2 5 7];
h=[1 1 1 1];
to=zeros((length(x)+length(h)-1),length(h));

for i=1:length(h)
    to(i:i+(length(h)),i)=x;
   
end

    
y=to*h';
subplot(3,1,1),stem(x);
title('Linear convolution');
xlabel('n');
ylabel('x(n)');
subplot(3,1,2),stem(h);
xlabel('n');
ylabel('h(n)');
subplot(3,1,3),stem(y);
xlabel('n');
ylabel('y(n)');