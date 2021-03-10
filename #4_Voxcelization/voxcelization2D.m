function [transX2D] = voxcelization2D(count3D)
  [x2D,y2D] = find(count3D);
  transX2D = [x2D, y2D];
end