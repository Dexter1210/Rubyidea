def greeting
    "Hello"  #last exp is automatically return
end

p greeting

def greeting1(message)
    "Hello #{message}"
end

p greeting1("Good morning buddy")

def write(file,data,mode="w") #use of default mode
    puts "#{data} is being written to #{file} in #{mode} mode"
end

 write("hello.txt","welcome","r")
 write("hello.txt","welcome")

#use of args operator for making func generic
 def sum(*args)
    p args.inspect
    result=0
   # args.each do |item|
    #    result=result+item
    #end
    for item in args
        result=result+item
    end
    result
end

puts sum(1,2,3,4)
puts sum(1,2,3,4,5,6,7)