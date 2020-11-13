global.pumpkincount -= 1
global.points += 1
instance_create_layer(x,y,"Instances",obj_debris)
audio_play_sound(sfx_break,0,false)

var powerup
if choose(1,2,3,4,5) == 3 {
	rand2 = random_range(1,10)
	if rand2 < 5 {
		powerup = obj_power_speed
	} else if rand2 > 5 and rand2 < 9 {
		powerup = obj_power_break
	} else {
		powerup = obj_power_time
	}
	instance_create_layer(x + random_range(1,25),y + random_range(1,25),"Instances",powerup)
}