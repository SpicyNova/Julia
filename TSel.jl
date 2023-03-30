a = 1
b = 2
c = 3
d = 4
e = 4

#Simple If
if (a != b)
	println("a(", a, ") does not equal b(", b, ")")
end

#If-Else
if ((c > b) && (a < b))
	println("b(", b, ") is in between a(", a, ") and c(", c, ")")
elseif (b >= c)
	println("b(", b, ") is greater than or equal to c(", c, ")")
elseif (b <= a)
	println("b(", b, ") is less than or equal to a(", a, ")")
end

#Nested If-Else
if ((d < e) || (d > e))
	println("d(", d, ") is not equal to b(", b, ")")
else
	if (d == e)
		println("d(", d, ") is equal to e(", e, ")")
	end
end
