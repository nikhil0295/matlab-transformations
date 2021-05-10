
clear all;
clc;
close all;

t = (0:0.1:1)';
imp= [1; zeros(99,1)];  % Impulse
subplot(4,1,1),stem(imp);
axis([-10 10 -1 1]);
title('impulse');
unit_step = ones(100,1); % Step (with 0 initial cond.)
subplot(4,1,2),stem(unit_step);
axis([-10 10 -1 1]);

title('step signal');

ramp_sig= t; 
subplot(4,1,3),stem(ramp_sig);
axis([-10 10 -1 1]);
title('ramp signal');

% Ramp
quad_sig=t.^2;       % Quadratic
subplot(4,1,4),stem(quad_sig);
axis([-10 10 -1 1]);
title('quadratic waveform');




