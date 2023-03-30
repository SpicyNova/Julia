#Variables & Their Data Types in Julia
i = 1 
f = 1.1
ch = 'a'
str = "string!"
b = true

SetA = Set([2,3,4])
DictA = Dict("Dog" => 1, "Lizard" => 2, "Parrot" => 3)
TupleA = (1,2,3,5)

println("i = ", i, " and is of type ", typeof(i))
println("f = ", f, " and is of type ", typeof(f))
println("ch = ", ch, " and is of type ", typeof(ch))
println("str = ", str, " and is of type ", typeof(str))
println("b = ", b, " and is of type ", typeof(b))
println("SetA = ", SetA, " and is of type ", typeof(SetA))
println("DictA = ", DictA, " and is of type ", typeof(DictA))
println("TupleA = ", TupleA, " and is of type ", typeof(TupleA))
