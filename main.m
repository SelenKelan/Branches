
%% necessary cleaning
clear all; close all; clc;

%
a=4;
theta=pi/2;
start=[4; 5];
length=40;
pts={branche(a,theta,start, length)};
flor=3;
ouver=pi/8;
leng=40;
amp=5;
nvram=rame(pts, flor, ouver, leng, amp)

%% The drawing
% figure,
% for i=1:size(pts,2)    
%     plot(pts(1,1:i),pts(2,1:i));
%     axis([min(pts(1,:)) max(pts(1,:)) min(pts(2,:)) max(pts(2,:))])
%     drawnow;
% end