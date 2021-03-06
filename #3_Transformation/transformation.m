function output = transformation(input, angle)

x = input;
z  =deg2rad(angle);

% Transformation
u_1 = [cos(z) ; 0; -sin(z)];
u_2 = [0 ; 1 ;0];
u_3 = [sin(z) ; 0 ;  cos(z)];
P = [u_1 , u_2 , u_3];

x_p = x(:,1);
y_p = x(:,2);
z_p = x(:,3);

new_x = (P*[x_p' ; y_p' ; z_p'])';
output= new_x;
end