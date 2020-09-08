#To create an array
result=["heads","tails"].sample #select a random value from array

if result=="heads"
    puts "The coin toss is heads"
else
    puts "The coin toss is tails"
end


#use of if expression
age=18

status=if age<18
        "minor"
else
    "adult"
end

p status


status=age<18? "minor" : "adult"
p status

#symbols and strings are subsitutable

shirt_size=:l
label=if shirt_size==:s
    "small"
elsif shirt_size=="m"
    "medium"
else
    "unknown size"
end

p "The shirt size is #{label}"


#case statement

age=20
case age
when 18,19,20
    puts "You are an adult now!"
when 10
    puts "Still a kid"
else
    puts "Let me guess!"
end

age=17
puts "Age is #{age}" if age==19
puts "Age is #{age}" if age==17
