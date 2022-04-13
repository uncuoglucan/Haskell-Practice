--Part 1
--1
--1.1.
cNRHelper [] counter = counter
cNRHelper (x:xs) counter = if (elem x ['0'..'9']) then cNRHelper xs (counter + 1) 
else cNRHelper xs counter

countNumbersRecursive myList = cNRHelper myList 0

--1.2.
elemHelper x = elem x ['0'..'9'] 
countNumbersListComp myList = length[q | a <- myList, q <- map elemHelper a]

--2
sumEqHelper i = ((i*i) + 6)/((2*i)+1)

sumEquation 0 = 6
sumEquation j = sumEqHelper j + sumEquation (j-1)

--Part 2
--1
letInFunction = let a = 1 
f x = a + (g x) 
g x = x + 2 in f 2 + let a = 4 g x = (x + 1) in (f 3)

mapQuestion xs = map f xs where f x = x * 2 + 3

lambdaQuestion xs = foldr (\x y -> x + y) 1 xs
