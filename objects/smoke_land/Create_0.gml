event_inherited();

dir = choose(1,-1);
length = 50;
depth = 100;
image_blend = c_black;

xvel = random_range(0,2)*dir;
yvel = 0.05;

fade_speed = random_range(0,1)/10;
y_accel = random_range(0, -1)/50;
x_accel = -(random_range(1, 3)/10)*dir;
				
image_xscale = random_range(2,2);
image_yscale = image_xscale;

x+=dir*3;

