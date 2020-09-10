
class Object
    #Overriding
    def self.const_missing(c)
        puts "#{c} is missing. so lets load it dynamically"
        require_relative "./#{c.downcase}"
       # Cat
      klass= const_get(c)
      p klass
      klass
    end
end



puffy_cat=Cat.new
puffy_cat.talk

