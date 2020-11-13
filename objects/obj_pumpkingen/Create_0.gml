randomize()

active = true
x1 = x
y1 = y
x2 = (32 * image_xscale) + x
y2 = (32 * image_yscale) + y
rand_x = random_range(x1,x2)
rand_y = random_range(y1,y2)
global.pumpkincount = 0

function makePumpkin() {
	rand_x = random_range(x1,x2)
	rand_y = random_range(y1,y2)
	if place_free(rand_x,rand_y)
	{
		instance_create_layer(rand_x,rand_y,"Instances",obj_pumpkin)
		global.pumpkincount += 1
	}
}

if active {
	repeat(5) {
		makePumpkin()
	}
}