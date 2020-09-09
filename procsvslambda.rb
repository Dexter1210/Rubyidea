#procs dont care about missing argumnets but lambda do

some_proc=Proc.new{|name,age| "Your name is #{name} and age is #{age}"}
p some_proc.call("Devesh")


some_lambda=lambda{|name,age| "Your name is #{name} and age is #{age}"}
#p some_lambda.call("Devesh") #Throws exception
p some_lambda.call("Devesh",12)

#The return values are different
def dietproc
    status=Proc.new{return "You gave in!"} #explict return skips the part of code so removing return
    status.call
    "You completed the diet!"
end

result_proc=dietproc
p result_proc

def dietlambda
    status=lambda{return "You gave in!"} #explict return doesnt skips the part of code 
    status.call
    "You completed the diet!"
end

result_lambda=dietlambda
p result_lambda

#general part is use lambda
