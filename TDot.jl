for i in 1:5
    print(" ", i)
end
println()

a = [1 5 7] .+ [100, 200, 300]
display(a)
a = a .* [1 10 100]

#Testing
A = transpose([x/y for x=Vector(5:-1:1), y=Vector(1:5)])
display(A)
