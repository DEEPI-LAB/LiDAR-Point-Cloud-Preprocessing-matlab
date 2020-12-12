function visualization2D(xyzi)

figure(1)
%2D Visualization
subplot(3,1,1)
scatter(xyzi(:,1),xyzi(:,2),1,'.k')
title('origin')
subplot(3,1,2)
gscatter(xyzi(:,1),xyzi(:,2),xyzi(:,3))
legend off
title('height')
subplot(3,1,3)
gscatter(xyzi(:,1),xyzi(:,2),xyzi(:,4))
legend off
title('intensity')