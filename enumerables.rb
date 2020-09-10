class Store

    include Enumerable
    attr_reader :snacks

    def initialize
        @snacks=[]
    end
    def add_snack(snack)
        snacks<<snack
    end

    #kind of interface(each)
    def each
        snacks.each do |snack|
            yield snack
        end
    end


end

mumbai=Store.new
mumbai.add_snack("VadaPav")
mumbai.add_snack("Misal pav")
mumbai.add_snack("Samosa")

p mumbai
p mumbai.first
p mumbai.map{|snack| snack.upcase}
p mumbai.select{|snack| snack.downcase.include?("v")}


