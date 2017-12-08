function ptt = branche(a,theta,start, length)
t=0:length-1;
pts=zeros(2, size(t,2));
pts(1,:)=t;
pts(2,:)=a*sin(2*pi*t/length);
MRot=[cos(theta) -sin(theta);sin(theta) cos(theta)];
ptt=zeros(2, size(t,2));
for i=1:size(t,2)
    ptt(:,i)=MRot*pts(:,i);
end
ptt=ptt+start;

end