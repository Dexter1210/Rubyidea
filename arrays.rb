#array Creation
fruits=["orange","pineapple","chickoo","mango"]
puts fruits[1] #pineapple

puts fruits.first
puts fruits.last
#pop removes last item
puts fruits.pop
puts fruits

#addition in last by push or <<
fruits.push("grapes");
fruits<<"Guvava"

puts fruits

p fruits.shift #removes first elem

p fruits

fruits.reverse
 p fruits

 #flatten the array reducing it to 1 d
 s = [ 1, 2, 3 ]           #=> [1, 2, 3]
t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
b=a.flatten                #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p b

#! is a destructible return type

p fruits.shuffle!
p fruits.shuffle!
p fruits.shuffle!

a.flatten!
p a

#map method
puts "Map Methods"

fruits2=fruits.map do |fruit|
    fruit #last expresssion equivalent to return fruit
end

p "Fruits 2:", fruits2

nums=[1,2,3,4,5,6]
p nums
squares=nums.map do |n|
     n*n
end
p squares

nums=[1,2,3,4,5,6]
p nums
squares=nums.map.with_index do |n,index| #block of code only exception to object
    {index: n*n}
end

p squares
 p squares[0][:index]

 numbers=[1,2,3,4,5,6,7,8,9,10]
 greater_4=numbers.select do |n|
    n>4
end

p greater_4
#alt method
greater_4=numbers.select{|n| n>4}

p greater_4
