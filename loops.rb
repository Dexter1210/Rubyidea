
#infinite loop
#loop do
 #   puts "This will run for ever press ctrl+c"
#end

#a more useful loop
i=0
loop do
    puts i
    i+=1
    if i==10
        break
    end
end
puts "----------------------------------"
#skipping code
i=0
loop do
    i+=2
    if i==4
        next #skip the rest of code
    end
    puts i

    if i==10
        break
    end
end

#while loop

puts "Enter your age:"
age=gets.chomp.to_i

while age>=0
    puts age
    age=age-1
end

puts "Done!"


#Until loop
puts "Enter the number"
num=gets.chomp.to_i
fac=1
until num<1
    fac=fac*num
    num=num-1
end
puts "the factorial is #{fac}"

#Do while

loop do
    puts "Do this always"
    puts "Do you want to continue?"
    answer=gets.chomp
    if answer!="y"
        break
    end
end

#for loop

num=[1,2,3,4,5]
for i in num do
    puts i
end

