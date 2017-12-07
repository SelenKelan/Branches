function nvRame=rame(prevRame, flor, ouver, leng, amp)
    nvRame={};
    for i=1:size(prevRame,1)
        br=prevRame(i)
        nbranche=randi([1,flor]);
        for j=1:nbranche
            pt=br(:,randi([1,size(br,1)]))
            atlen=int16(size(nvRame,1)+1);
            nvRame{atlen}=branche(amp*rand(1),ouver*rand(),pt, randi([leng/2 leng]));
        end
    end
    
end