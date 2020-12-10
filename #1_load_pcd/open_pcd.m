% *********************************************
% Point Cloud Data preprocessing
% Jongwon Kim
% Deep.I Inc
% deepi.contac.us@gmail.com
% https://deep-eye.tistory.com
% *********************************************

addpath(genpath('../sample'))
addpath(genpath('../function'))

% load pcd file
lidar_dir = fopen('1.bin');
lidar_file = fread(lidar_dir,[4 inf],'single')';
fclose(lidar_dir);

% X, Y, Z
x_1 = lidar_file(:,1:3); 
% X, Y, Intensity
x_2 = [lidar_file(:,1:2), lidar_file(:,4)];

% preprocessing
x_1(:,3) = round(x_1(:,3),1);
x_2(:,3) = round(x_2(:,3),1);

figure(1)
%2D Visualization
subplot(3,1,1)
title('origin')
scatter(x_1(:,1),x_1(:,2),1,'.k')
subplot(3,1,2)
title('height')
gscatter(x_1(:,1),x_1(:,2),x_1(:,3))
legend off
subplot(3,1,3)
title('intensity')
gscatter(x_2(:,1),x_2(:,2),x_2(:,3))
legend off

figure(2)
%3D Visualization
subplot(3,1,1)
title('origin')
scatter3(x_1(:,1),x_1(:,2),x_1(:,3),1,'.k')
subplot(3,1,2)
title('height')
gscatter3(x_1(:,1),x_1(:,2),x_1(:,3),x_1(:,3))
legend off
subplot(3,1,3)
title('intensity')
gscatter3(x_2(:,1),x_2(:,2),x_1(:,3),x_2(:,3))
legend off
 
figure(3)
title('height')
gscatter3(x_1(:,1),x_1(:,2),x_1(:,3),x_1(:,3))
legend off