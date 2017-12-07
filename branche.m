function ptt = branche(a,theta,start, length)
pts=zeros(2, length);
t=0:length-1;
pts(1,:)=t;
pts(2,:)=a*sin(2*pi*t/length);
MRot=[cos(theta) -sin(theta);sin(theta) cos(theta)];
ptt=zeros(2, length);
for i=1:length
    ptt(:,i)=MRot*pts(:,i);
end
ptt=ptt+start;

end