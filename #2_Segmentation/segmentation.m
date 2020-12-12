function idx = segmentation(xyzi,section)

alpha = section; 
num = 180/alpha;
num = -num : 1 : num ;
idx = zeros(size(xyzi,1),1);
seg= rad2deg(atan2(xyzi(:,1),xyzi(:,2))) / alpha;

for i = 1 : 360/alpha
    
    temp_1 = num(i);
    temp_2 = num(i+1);
    idx(find(seg >= temp_1 & seg < temp_2)) = i;
    
end
end