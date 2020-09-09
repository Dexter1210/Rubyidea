squares_proc=Proc.new {|num| num*num}
p squares_proc.call(4)

p [1,2,3].map(&squares_proc)

squares_lambda=lambda{|num| num*num}
p squares_lambda.call(4)
p [1,2,3].map(&squares_lambda)

#shortcut for lambda
twice=-> (x) {2*x}

p twice.call(22)