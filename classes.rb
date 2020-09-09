class Gadget
    #Like Constructor
    def initialize
        #instance variables uses @
        @gadget_type="Electronics"
        @production_no=rand(1..1000)
    end
    #Explicit getter method
    def gadget_type
        @gadget_type
    end

    def production_no
        @production_no
    end

    #Explicit setter method
    
    def gadget_type=(type)
        @gadget_type=type
    end

    def production_no=(type)
        @production_no=type
    end



    #Overriding to_s method
    def to_s
        "Gadget #{@production_no} of type #{@gadget_type}"
    end
end

phone=Gadget.new
p phone.to_s

laptop=Gadget.new
p laptop.to_s

p laptop.gadget_type
p laptop.production_no

laptop.gadget_type="MotaBhai"
p laptop.gadget_type