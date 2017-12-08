
%% necessary cleaning
clear all; close all; clc;

%% first branch
a=4;
theta=0;
start=[4; 5];
length=40;
pts=branche(a,theta,start, length);

%% generating parameters
flor=4;
ouver=pi/4;
leng=40;
amp=5;

%% other branches
nvram=rame({pts}, flor, ouver, leng, amp);

for j=1:int16(size(nvram,2))
    pts=[pts nvram{j}];
end

%% The drawing
figure,
for i=1:size(pts,2)    
    plot(pts(1,1:i),pts(2,1:i),'b.');
    axis([min(pts(1,:)) max(pts(1,:)) min(pts(2,:)) max(pts(2,:))])
    drawnow;
end