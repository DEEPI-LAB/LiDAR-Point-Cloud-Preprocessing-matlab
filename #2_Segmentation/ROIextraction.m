function xyzi = ROIextraction(xyzi,x,y,z,flag)

if (flag == 'height')
    
    xyzi = xyzi(xyzi(:,1) > x(1) & xyzi(:,1) < x(2) & xyzi(:,2) > y(1) & xyzi(:,2) < y(2),:);
    xyzi = xyzi(xyzi(:,3) > z(1) & xyzi(:,3) < z(2),:);
    
elseif (flag == 'intensity')
    
    xyzi = xyzi(xyzi(:,1) > x(1) & xyzi(:,1) < x(2) & xyzi(:,2) > y(1) & xyzi(:,2) < y(2),:);
    xyzi = xyzi(xyzi(:,4) > z(1) & xyzi(:,4) < z(2),:);

else
    error('No matching values found');
end


