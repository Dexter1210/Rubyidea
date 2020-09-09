class ActiveRecord

    def self.table_name
        @table_name
    end

    def get_table_name
        self.class.table_name
    end


end

class User < ActiveRecord
    #self=>user
    p self

    @table_name="users"
end


class Address < ActiveRecord

    @table_name="address" #class instance variable

end

puts User.new.get_table_name #users
puts Address.new.get_table_name #address

#for defining many static methods
class Active
class <<self
    def all
        puts "Fetch all records..."
    end

    def find
        puts "Find all records"
    end
end 

end

Active.all
Active.find
