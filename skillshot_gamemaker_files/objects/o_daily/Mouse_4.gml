if global.mode_skillshot == 1{
	if global.scores_dodgev1 != 0{
		o_draw_online_score.scores = global.scores_dodgev1_daily;
	}
}

if global.mode_skillshot  == 2{
	if global.scores_dodgev2 != 0{
		o_draw_online_score.scores = global.scores_dodgev2_daily;
	}
}


image_alpha = 1;
o_weekly.image_alpha = 0.7;
o_alltime.image_alpha= 0.7;
