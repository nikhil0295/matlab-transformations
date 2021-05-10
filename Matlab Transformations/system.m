clc;
clear all;
close all;
n=1:10
x=inline('n');
y=inline('x-3');
z=x(n-2);
a=y(z);
%linearity
x1=1:10;
x2=1:10;
x3=(2*x1)+(3*x2);
y1=y(x1);
y2=y(x2);
y3=y(x3);
y4=(2*y1)+(3*y2)
if(y4==y3)
    disp('linear');
else
    disp('nonlinear');
end
%timeinvariance
%delayed op
no=5;
y5=y(n-no);
%delayed ip
y6=y(x(n-no));
if y5==y6
    disp('timeinvariant');
else
    disp('timevariant');
end
%causality
n1=1:5;
 tt=y(n1);
if tt>n1
 disp('causal');
else
    disp('noncausal');
    end
   