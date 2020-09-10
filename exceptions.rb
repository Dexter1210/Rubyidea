begin
    1/0
rescue ZeroDivisionError => e
    puts e.message
    puts e.backtrace.inspect
rescue exception =>e
    p e
else

ensure
    puts "This code will always run"
end

