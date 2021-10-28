input = get_string("Enter Amount",6);
input =string_digits(input);
if input != ""{
	global.enemy_set_amount = real(input);	
}