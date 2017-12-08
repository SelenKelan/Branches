function nvRame=rame(prevRame, flor, ouver, leng, amp)
    nvRame={};
    for i=1:size(prevRame,1)
        br=prevRame{i};
        df=diff(br,1,2);
        nbranche=randi([2 flor]);
        for j=1:nbranche            
            rd=randi([1,size(br,2)]);
            pt=br(:,rd);            
            ang=atan2(df(1,rd),df(2,rd))
            atlen=int16(size(nvRame,2))+1;            
            nvRame{atlen}=branche(amp*rand(1),ang,pt, randi([leng/2 leng]));
        end
    end
    
end