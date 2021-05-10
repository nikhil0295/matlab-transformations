close all;
clc;
clear all;
n=1:5;
m=3;
x=[1 2 3 4 5];
y=n-m;

subplot(2,1,1),stem(n,x);
title('Left shift');
xlabel('n');ylabel('x(n)');
axis([-10 10 -10 10]);
subplot(2,1,2),stem(y,x);

xlabel('n');ylabel('x(n+3)');
axis([-10 10 -10 10]);
