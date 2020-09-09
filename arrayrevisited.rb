fruits=["apple","orange","papaya","mango","banana"]

#Destructuring-> Removing individual elements in array

first,*rest=["apple","orange","mango","pineapple"]

puts first,rest.inspect

#Ignore rest

first,* =["apple","orange","mango","pineapple"]
puts first


first,*,last=["apple","orange","mango","pineapple"]
puts first,last
