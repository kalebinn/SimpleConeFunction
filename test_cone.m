jammer_x = 200;
jammer_y = 300;
jammer_z = 100;
radius = 300;
height = 900;
xlim([-2000 2000]);
ylim([-2000 2000]);
zlim ([-1000 1000]);
hold on
rotate3d on
grid on
drawsimplecone(jammer_x,jammer_y,jammer_z,radius,height,'-','y',0.2)