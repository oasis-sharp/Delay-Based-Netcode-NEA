if(owner != -4){
	x = owner.x+((recoiloffsetx*sign(owner.image_xscale))+(offsetx*sign(owner.image_xscale)));
	y = owner.y+offsety+recoiloffsety;
	
	image_xscale = (sign(owner.image_xscale)*xscale_offset)
	image_yscale = yscale_offset;


	if(owner.normalPressed){
		event_user(1);	
	}

	recoiloffsetx*=0.9;
	recoiloffsety*=0.9;

}