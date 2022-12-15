moveX = 0;

if (hascontrol) {
	//set keys

	if (keyboard_check(vk_left) or keyboard_check(ord("A"))) moveX = -spd;
	if (keyboard_check(vk_right) or keyboard_check(ord("D"))) moveX = spd;
	if ((keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("Z"))) && onGround) {
	    moveY -= jumpforce
	    onGround = false;
		audio_play_sound(snJump,2,false);
	}
}

moveY += grav;

repeat(precisionStep) {
    var xStep = moveX / precisionStep;
    var yStep = moveY / precisionStep;

    if (place_meeting(x + xStep, y, oWall)) {
        moveX = 0;
    } else {
        x += xStep;
    }


    if (moveY > 0) {

        if (place_meeting(x, y + yStep, oWall)) {
            onGround = true;
            moveY = 0;
        } else {
            y += yStep;
        }
    } else {
		if (place_meeting(x, y + yStep, oWall)) {
            moveY = 0;
        } else {
            y += yStep;
        }
      }
}

if (!place_meeting(x,y+1,oWall)) {
	// draw his airborne sprite
	sprite_index = sPlayer_air;
	//audio_play_sound(snGoatLand,1,false);
	// don't animate it
	//image_index = 1;
}
else {
	if (sprite_index == sPlayer_air) {
	audio_sound_pitch(snGoatLand,random_range(0.7,1.3));
	audio_play_sound(snGoatLand,0.5,false);
	}
	if (moveX == 0) {
		 sprite_index = sPlayer_id;
	}

	else {
		 sprite_index = sPlayer_run;
	}
}
if (moveX !=0) {
	image_xscale = sign(moveX);
	
}




