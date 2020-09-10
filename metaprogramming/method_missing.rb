class Numeric
    @@currencies={ yen: 1.55,euro: 0.013,usd: 0.014}
    def method_missing(method_name,*args,&block)
        p self
        self * @@currencies[method_name]
    end


end

puts "#{100.usd} INR"
puts "#{200.euro} euro"