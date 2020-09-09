class Gadget
    attr_reader :gadget_type,:production_no #macro method for generating getter method
    attr_writer :gadget_type,:production_no #for gebnerating setter method
    #attr_accessor will create both getter and setter
    #Like Constructor
    def initialize
        #instance variables uses @
        @gadget_type="Electronics"
        @production_no=rand(1..1000)
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