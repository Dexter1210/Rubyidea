family={
    sisters:["s1","s2","s3"],
    brothers:["b1","b2","b3"],
    uncles:["u1","u2","u3"],
    aunts:["a1","a2","a3"]
}


near_members=family.reduce([]) do |arr,(k,v)|
    #p k,v
    if (k==:sisters || k==:brothers)
        arr<<v
    end
    arr
end


p near_members.flatten

puts "-------------------------------------"

count=1

near_members=family.reduce do |prev,curr|
    prev+curr
end

p near_members
