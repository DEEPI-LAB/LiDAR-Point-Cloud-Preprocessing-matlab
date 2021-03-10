function [transX3D] = voxcelization3D(pcd,count)
s = 1;
for k =1:count
        if(k==1)
            [x3D,y3D,z3D] = find(pcd(:,:,k)) ;
            transX3D =[x3D, y3D,repmat(s,size(x3D,1),1)] ;
        else
            [x3D,y3D,z3D] = find(pcd(:,:,k)) ;
            transX3D = [transX3D ; x3D, y3D, repmat(s,size(x3D,1),1)];
        end
        s = s + 1;
end