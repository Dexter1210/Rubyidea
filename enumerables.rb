require_relative "./my-enumerable"

class Store

    include Enumerable
    attr_reader :a

    def initialize
        
        @a=[]
    end
    #

    def add_a(ele)
        a<<ele
    end


    #kind of interface(each)
    

    def each
        a.each do |ele|
            yield ele
        end
    end


end

mumbai=Store.new

mumbai.add_a(1)
mumbai.add_a(2)
mumbai.add_a(3)


p mumbai

p mumbai.max

p mumbai.min

p mumbai.sort


