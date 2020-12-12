function visualization3D(xyzi)

figure(2)
%3D Visualization
subplot(3,1,1)
title('origin')
scatter3(xyzi(:,1),xyzi(:,2),xyzi(:,3),1,'.k')
subplot(3,1,2)
gscatter3(xyzi(:,1),xyzi(:,2),xyzi(:,3),xyzi(:,3))
legend off
title('height')
subplot(3,1,3)
gscatter3(xyzi(:,1),xyzi(:,2),xyzi(:,3),xyzi(:,4))
legend off
title('intensity')