#While Loop
#Prints Values in Array @ Certain Index
numbers = [5, 2, 4, 1, 5] 
i = 1

println("First, let's run a while loop that prints the contents of an array of integers.")    
while i <= length(numbers)
    println("number at ", i, " is ", numbers[i])
    global i = i + 1
end

#For Loop
#Prints Values in Array @ Certain Index
println("\nNext, let's run our for loop that prints the contents of an array of strings.")
s = ["julia", "is", "cool"]

for i in s
    println(i)
end

#Nested Loops
#Prints * in Pattern
println("\nThe nested loop can be used for more precise printing.")
rows = 5;
#outer - prints rows
for i in range(1, rows)
    #inner - prints * per row
    for j in range(1, i)
        print("*")
    end
    println(' ')
end

#zip and enumeration support
println("\nJulia also support enumeration and zip based looping.")
println("zip will iterate over multiple lists until one of them (or both) ends.")
println("-Iterate over range 1:5 and ['a','b','c','d'] at the same time.")
for (i,j) in zip(1:5, ["a","b","c","d"])
    println("i is ", i, " and j is ", j)
end
println("\nEnumeration will return first the index of a list:: enumerate() -> index, value")

for (index, value) in enumerate(12:2:24) #generate range from 12 to 24, iterate by 2s
    println("index: ", index, " with value = ", value)
end

mat = [x*y for x = Vector(1:3), y=Vector(3:-1:1)]

println("Julia even allows for enumeration over 2d matrices")
print("\nExample: Iterate over ")
display(mat)
println("\n")
for (ij, value) in pairs(mat)
        println("index is ", ij, " value is :", value)
end
