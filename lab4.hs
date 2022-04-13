--1
repli "" y = ""
repli (x:xs) y = replicate y x ++ repli xs y ++ "" 

--2
compress "" = ""
compress [x] = [x]
compress (x:xs) = if x == (head xs) then compress xs
else x : compress xs ++ ""

--3
--3.1.
 
--3.2.


--4
data ThreeDShapes = Cube Int| Cylinder Int Int deriving (Show, Eq, Ord)

volume (Cube sideLength) = sideLength*sideLength*sideLength
volume (Cylinder radius height) = 3*radius*radius*height

surfaceArea (Cube sideLength) = 6*sideLength*sideLength
surfaceArea (Cylinder radius height) = 6*radius*(height+radius)

--5
data ThreeDShapesPoly a = CubePoly a| CylinderPoly a a deriving (Show, Eq, Ord)

volumePoly (CubePoly sideLength) = sideLength*sideLength*sideLength
volumePoly (CylinderPoly radius height) = 3*radius*radius*height

surfaceAreaPoly (CubePoly sideLength) = 6*sideLength*sideLength
surfaceAreaPoly (CylinderPoly radius height) = 6*radius*(height+radius)

--6
data Tree = EmptyTree | Node Integer Tree Tree deriving (Show, Eq, Ord)

insertElement x EmptyTree = Node x EmptyTree EmptyTree
insertElement x (Node a left right) = if x == a then (Node x left right)
else if x < a then (Node a (insertElement x left) right)
else Node a left (insertElement x right)

inserterHelper binTree [] = binTree
inserterHelper binTree (x:xs) = inserterHelper (insertElement x binTree) xs

inserter myList = inserterHelper EmptyTree myList

--7 
minOfHelper EmptyTree minVal = minVal
minOfHelper (Node value left right) minVal = minOfHelper left value

minOf (Node value left right) = minOfHelper (Node value left right) 0

--8
isEmpty a = if (a == EmptyTree) then True else False 

--9
searchElement x EmptyTree = False
searchElement x (Node value left right) = if x == value then True
else if value < x then searchElement x right else searchElement x left 