class ActiveRecord
    p self
    puts "Hmm... Is it strange" #direct invocation -> macro methods


    def all
        p self
        puts "Find all record"
     end

     def self.all1
        puts "This is an imitation of static method"
     end
end

ar=ActiveRecord.new
ar.all
ActiveRecord.all1

