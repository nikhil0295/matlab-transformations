clc; clear all;
y=[1 1 2 3];
n1=[0 1 2 3];
x=y(size(y,2):-1:1);
n=-n1(size(y,2):-1:1);
subplot(2,1,1),stem(n1,y);
title('FOLDING');
xlabel('n');ylabel('x(n)');
axis([-5 5 -5 5]);
subplot(2,1,2),stem(n,x);
xlabel('n');ylabel('x(-n)');
axis([-5 5 -5 5])
