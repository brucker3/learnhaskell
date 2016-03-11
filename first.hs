doubleMe x = x + x
doubleU x y = doubleMe x + doubleMe y 
doubleSmallNumber x = if x > 100
		  then x
		  else x*2
doubleSmallNumber' x= if x>100 then x else x*2 + 1 

boomBangs xs = [ if x < 10 then "Boom" else "Bang" | x <- xs, odd x]

length' :: (Num b) => [a] -> b 
length' [] = 0
length' (_:xs) = 1 + length' xs

-- line commented out becaseu it wont complie 'elem'
-- removeNonUppercase st = [ c | c<- st, c 'elem' ['A'..'Z']]

factorial :: (Integral a) => a -> a 
factorial 0=1
factorial n= n* factorial(n-1)

circumference :: Double -> Double
circumference r = 2 * pi * r



lucky :: (Integral a) => a -> String
lucky 7 = "Lucky Number Seven!"
lucky x ="Sorry, your're out of luck, pal!"


sayMe ::(Integral a) => a -> String
sayMe 1 = "One"
sayMe 2 = "two"


addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors (x1,y1) (x2,y2) = (x1+x2,y1+y2)

head' :: [a] -> a 
head' [] = error " can't call head on an empty list"
head' (x:_) = x 


tell :: (Show a) => [a] -> String
tell [] = "the lsit is empty"
tell (x:[])  = " the list has one elemtnes: " ++ show x
tell (x:y:[]) = "the list has two elements: " ++  show x ++ "and " ++  show y
tell (x:y:_) = "this list is long the first two elements are:" ++ show x ++ "and " ++ show y

sum' :: (Num a) => [a] -> a
sum' [] = 0 
sum' (x:xs) = x + sum' xs