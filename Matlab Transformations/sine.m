clc;
clear all;

close all;
fs=1000;
dt=1/fs;
x=0:dt:.1;
y=sin(2*pi*50*x);

stem(x,y);
title('sine wave');
xlabel('n');ylabel('x(n)');