--a
myListSum [] = 0
myListSum [x] = x
myListSum (x:xs) = sum xs - last xs

--b
body [] = []
body [x] = [x]
body (x:xs) = init xs

--c
maxNumFind xs xy = max (maximum xs) (maximum xy)

--d
maxTuple xs xy = ((maximum xs), (maximum xy))

--e
addList x xs = if elem x xs then xs else x:xs

--f 
tupleFunct (x,y,z) = z

--g
coordinates (x1,y1) (x2, y2) = sqrt((x2-x1)^2 + (y2-y1)^2 )

--h
empPay x y z = if x == 1 then (y*10) 
else if x == 2 || x == 3 then (7*y)+(10.5*z) 
else if x == 4 then (5*y)+(10*z) else 0