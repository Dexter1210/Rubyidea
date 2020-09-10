

require "active_support/inflector"

$db={
    users: [{id:1,username:"user1"},
             {id:2,username:"user2"}],

    tasks:[
        {id:1,title:"task1",completed:true},
        {id:2,title:"task1",completed:false},
        {id:3,title:"task3",completed:true}
    ]


}

class Model

    def initialize
        puts "#{self} #{class_name} is getting initialized...."
    end

    def self.connect
        class_name= to_s.downcase.pluralize
        @data=$db[:"#{class_name}"]
        p @data

    end



end

class User < Model
end

class Task < Model
end

puts "Find task by id1"
task=Task.find_by_id(1){
    puts "Successful found it"
}

p task
tasks=Task.find_by_completed(true)
p tasks

tasks=Task.find_by_title("task1")
p tasks

user1=User.find_by_id(2)
p user1

