#Finds the circumfrence of a circle
function findCircumfrence(r) 
	C = 2 * π * r
	return C
end

#Area for Rectangle
function findArea(l, w)
	A = l * w
	return A
end

#Area for Octagon
function findArea(a)::Float16
	A = 2 * (1 + sqrt(2)) * abs2(a)
	return A
end

#Make Use of Functions Declared Above
println("The circumfrence of a circle with radius 2 is: ", findCircumfrence(2))
println("The area of a rectangle with l=4 and w=7 is: ", findArea(4,7))
println("The area of an octagon with side of length 10 is: ", findArea(10))
