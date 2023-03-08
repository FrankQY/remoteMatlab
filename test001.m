%% 23.3.7 预分配内存 

dbstop if error
clear;
clc;
close all;

%% 无预分配
tic
x=0;
for k=2:1000000
    x(k)= x(k-1) + 5;
end
toc

%% 有预分配
tic
% x=0;
x = zeros(1, 1000000);
for k=2:1000000
    x(k)= x(k-1) + 5;
end
toc
