#for creating global variables
$everywhere="I am global"

class ActiveRecord

    # @@ for creating class level or static variables
    @@count=1
    p self
    puts "Hmm... Is it strange" #direct invocation -> macro methods


    def all
        p self
        puts "Find all record"
     end
     #use of self. for static method
     def self.all1
        puts "This is an imitation of static method"
     end

     def self.count #getter method for static variable
        @@count
     end
end

ar=ActiveRecord.new
ar.all
ActiveRecord.all1
p ActiveRecord.count

