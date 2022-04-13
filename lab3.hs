--a
natural 0 = []
natural x = natural (x-1) ++ [x]

--b
power x 0 = 1
power x y = x * power x (y-1)

--c
fx 5 = 1-5
fx 10 = (10/(10*10))
fx x = x

--d
vowelcount xs = length [x | x<-xs, elem x ['a','e','i','o','u']]

--e
sumn [] [] = 0
sumn (x:xx) (y:yy) = if x == 'A' then (4*y) + sumn xx yy 
else if x == 'B' then (3*y) + sumn xx yy 
else if x == 'C' then (2*y) + sumn xx yy 
else if x == 'E' then (1*y) + sumn xx yy 
else (0*y) + sumn xx yy
calculateGPA xx yy  = sumn xx yy / sum yy