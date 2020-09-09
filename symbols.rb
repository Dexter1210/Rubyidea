menu={"burger":3,"taco":5,"chips":1}

p menu

menu1={:coke =>4,:pepsi =>5}
p menu1

menu2={dosa: 10, idli: 5}

menu1[:pepsi]=10

p menu2.fetch(:dosa)

p menu1.fetch(:thumbsup,"Thumbsup not there")#fetch method key,default mssg

#loop through hash
cities={mumbai:2.2,delhi:2.3,chennai:2.5}

cities.each do |key,value|
    puts "#{key}=#{value}"
end

#Loop through keys
cities.each_key do |key|
    puts key
end

cities.each_value do |value|
    puts value
end

#get index
cities.each_with_index do |(key,value),index|
    puts "index #{index} |key:#{key} |value:#{value}"
end

