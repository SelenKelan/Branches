clear all
a=10;
theta=-3*pi/4;
start=[4 5];
length=40;
pts=branche(a,theta,start, length)
plot(pts(:,1),pts(:,2));