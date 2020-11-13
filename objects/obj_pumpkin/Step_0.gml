if place_meeting(x,y,obj_player) {
	if obj_player.smashed != true and obj_player.state == 1 {
		hp -= 1
		obj_player.smashed = true
		repeat(random_range(2,4)) {
			with instance_create_layer(x,y,"Instances",obj_particle)
			{
				sprite_index = spr_pumpparticle
				image_index = random_range(0,2)
			}
		}
		if hp > 0 {
			audio_play_sound(sfx_smash,0,false)
		}
	}
}

switch hp {
	case 3:
		sprite_index = spr_pumpkin_3
		break;
	case 2:
		sprite_index = spr_pumpkin_2
		break;
	case 1:
		sprite_index = spr_pumpkin_1
		break;
	case 0:
		instance_destroy(self)
		break;
}