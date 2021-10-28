if global.mode_skillshot  == 1{
	if global.scores_dodgev1 != 0{
		o_draw_online_score.scores = global.scores_dodgev1;
	}
}

if global.mode_skillshot  == 2{
	if global.scores_dodgev2 != 0{
		o_draw_online_score.scores = global.scores_dodgev2;
	}
}


image_alpha = 1;
o_weekly.image_alpha = 0.7;
o_daily.image_alpha= 0.7;