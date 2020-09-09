class Animal

    attr_accessor :kingdom
    def initialize
        puts "Animal Class is initialised"
        @kingdom="Welcome to Animal Kingdom"
    end
    def eat
        puts "I am hungry"
    end

    def walk
        puts "I am strolling...."
    end
end

animal=Animal.new
animal.eat

class Cat < Animal #symbol for inheritance
end

cat1=Cat.new
cat1.walk

class Dog < Animal 
    def walk
        puts "Hmm ... not in a mood to walk"
        super # parent 'walk method'
    end
end

dog1=Dog.new
dog1.eat
dog1.walk
puts dog1.kingdom
