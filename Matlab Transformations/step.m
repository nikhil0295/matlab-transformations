
clc;
clear all;
close all;
n=0:10;


for i=0:10
    if i>=0
        y(i+1)=1;
    else
        y(i+1)=0;
    end
    
end
stem(n,y);
axis([ -5 5 -5 5]);
title('step signal');
xlabel('n');ylabel('u(n)');
    