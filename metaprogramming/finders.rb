

require "active_support/inflector"

$db={
    users: [{id:1,username:"user1"},
             {id:2,username:"user2"}],

    tasks:[
        {id:1,title:"task1",completed:true},
        {id:2,title:"task1",completed:false},
        {id:3,title:"task3",completed:true}
    ],

    projects: [
    { id: 1, title: "Project 1", owner: "devesh"},
    { id: 2, title: "Project 2", owner: "yogesh"},
    { id: 3, title: "Project 3", owner: "shritesh"},
    { id: 4, title: "Project 4", owner: "khushboo"},
  ],

    technologies:[
        {id:1, tech:"BlockChain"},
        {id:2, tech:"Random Forest Regression"},
        {id:3, tech:"Web API"},
        {id:4, tech:"Neural Networks"}




    ]


}

class Model

    def initialize
        puts "#{self} #{class_name} is getting initialized...."
    end

    def self.connect
        class_name= to_s.downcase.pluralize
        @data=$db[:"#{class_name}"]
        
    end

    def self.data
        @data
    end

    def self.method_missing(method,*args,&block)
        method_tokens=method.to_s.split("_")
        search_field=method_tokens[2]
        if method_tokens[0]=="find"
            results=[]
            self.data.each do |row|
                if row.key?(search_field.to_sym)
                    if args[0]==row[search_field.to_sym]
                        results<<row
                    end
                end
            end
            results
        else
            super
        end
    end
end


class User < Model
    connect
end

class Task < Model
    connect
end

class Project < Model
    connect
end

class Technology < Model
    connect
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

technology_used1=Technology.find_by_id(1)
p technology_used1

technology_used2=Technology.find_by_tech("BlockChain")
p technology_used2

