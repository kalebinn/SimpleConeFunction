%{
This function draws a simple cone along any of the 6 cartesian axis.
You can center the cone around any single point. 
Kelvin Ma
%}
function drawsimplecone(x_base, y_base, z_base, radius, height, sign,...
    direction, alpha)

    r_cone = linspace(0,radius, 10); % radius for plotting the cone
    height_cone = linspace(0,height,10);
    theta_cone = linspace(0,2*pi, 21); % azimuth angles range from 0 to 2pi
    
    if (sign == '+' && direction == 'z')
        [R_cone, Theta_cone] = meshgrid(r_cone, theta_cone);
        x_cone = R_cone .* cos(Theta_cone);
        y_cone = R_cone .* sin(Theta_cone);
        [Z_cone] = meshgrid(height_cone, theta_cone);
        z_cone = Z_cone;
        jammer_cone = surf(x_cone + x_base,...
            y_cone + y_base, ...
            z_cone + z_base);
        
    elseif (sign == '+' && direction == 'y')
        [R_cone, Theta_cone] = meshgrid(r_cone, theta_cone);
        x_cone = R_cone .* cos(Theta_cone);
        z_cone = R_cone .* sin(Theta_cone);
        [Y_cone] = meshgrid(height_cone, theta_cone);
        y_cone = Y_cone;
        jammer_cone = surf(x_cone + x_base,...
            y_cone + y_base, ...
            z_cone + z_base);
        
    elseif (sign == '+' && direction == 'x')
        [R_cone, Theta_cone] = meshgrid(r_cone, theta_cone);
        x_cone = R_cone .* cos(Theta_cone);
        y_cone = R_cone .* sin(Theta_cone);
        [Z_cone] = meshgrid(height_cone, theta_cone);
        z_cone = Z_cone;
        jammer_cone = surf(x_cone + x_base,...
            y_cone + y_base, ...
            z_cone + z_base);
        
    elseif (sign == '-' && direction == 'z')
        [R_cone, Theta_cone] = meshgrid(r_cone, theta_cone);
        x_cone = R_cone .* cos(Theta_cone);
        y_cone = R_cone .* sin(Theta_cone);
        [Z_cone] = meshgrid(height_cone, theta_cone);
        z_cone = Z_cone;
        jammer_cone = surf(x_cone + x_base,...
            y_cone + y_base, ...
            -z_cone + z_base);
        
   elseif (sign == '-' && direction == 'y')
        [R_cone, Theta_cone] = meshgrid(r_cone, theta_cone);
        x_cone = R_cone .* cos(Theta_cone);
        z_cone = R_cone .* sin(Theta_cone);
        [Y_cone] = meshgrid(height_cone, theta_cone);
        y_cone = Y_cone;
        jammer_cone = surf(x_cone + x_base,...
            -y_cone + y_base, ...
            z_cone + z_base);    
        
    elseif (sign == '-' && direction == 'x')
        [R_cone, Theta_cone] = meshgrid(r_cone, theta_cone);
        x_cone = R_cone .* cos(Theta_cone);
        y_cone = R_cone .* sin(Theta_cone);
        [Z_cone] = meshgrid(height_cone, theta_cone);
        z_cone = Z_cone;
        jammer_cone = surf(-x_cone + x_base,...
            y_cone + y_base, ...
            z_cone + z_base);
        
    end
    jammer_cone.FaceColor = 'red';
    jammer_cone.EdgeColor = 'red';
    jammer_cone.FaceAlpha = alpha;
    jammer_cone.EdgeAlpha = alpha;
end