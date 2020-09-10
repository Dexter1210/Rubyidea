
$global_var="I am global"
class Test
    @@count=1 #class level variable

    #public methods
    def method1
        puts "In method 1"
        method2 #call of private method
    end


    private 
    def method2 #private method
        puts "In method 2"
    end

    protected

    def method3 #protected method
        puts "In method 3"
    end

    def method4 
        puts "In method 4"
    end

    def method5 
        puts "In method 5"
    end

    public :method4 #alt way of defining the access modifier
    private :method5





end

class UnitTest < Test

    def run
        puts "Running tests....."
        method3 #protected method can be called from derived class
        method2 #private method behaves also like protected in derive class
    end
end


t1=Test.new
t1.method1
t1.method4



utest=UnitTest.new
utest.run

