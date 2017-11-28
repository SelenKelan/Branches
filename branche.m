function pts = branche(a,theta,start, length)
pts=zeros(length, 2);
t=0:length-1;
pts(:,1)=t;
pts(:,2)=a*sin(2*pi*t/length);
[x, y]=pol2cart(theta,length);
ppt=[linspace(0,x,length)' linspace(0,y,length)'];
pts=ppt+pts;
pts=pts+start;

end