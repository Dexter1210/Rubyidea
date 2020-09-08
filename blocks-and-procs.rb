# A simple method

def hug
    puts "{"
    yield   #for accessing the block of code
    puts "}"

    yield "Good bye"
    

end


#invoke the method

hug do |message| #pipe for capturing the return value of block
    puts "Thank you #{message}"
end

#every method in ruby can take a block of code implicitly


#proc
my_proc= proc do
    #any valid ruby code
    puts "I am in a proc"
end

my_proc.call # for proc use call method

hug &my_proc