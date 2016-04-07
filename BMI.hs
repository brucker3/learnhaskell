-- function to calculate your BMI 

bmiTell :: (Eq a) => a -> a -> String
bmiTell weight height
	| bmi  <= 18.5 = " your underweight"
	| bmi  <= 25.0 = " your normal"
	| bmi  <= 30.0 = " your fat"
	| otherwise = " really fat"
	where bmi = weight/height^2
	      skinny = 18.5
	      normal = 25.0
	      fat = 30.0