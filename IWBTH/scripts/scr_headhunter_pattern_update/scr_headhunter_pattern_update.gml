switch(bossphase)
{
	case 1:
		rand_reset(motion[Hmotion.laser1], motion[Hmotion.dash1], motion[Hmotion.boom1], motion[Hmotion.jump]);
	break;
	
	case 2:
		rand_reset(motion[Hmotion.laser2], motion[Hmotion.dash2], motion[Hmotion.boom2], motion[Hmotion.jump]);
	break;
	
	case 3:
		rand_reset(motion[Hmotion.laser3], motion[Hmotion.dash3], motion[Hmotion.boom3], motion[Hmotion.jump]);
	break;
}