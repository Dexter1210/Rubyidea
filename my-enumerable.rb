module MyEnumerable
    def map (&block)
      result = []   # local variable 
      each do |ele|
        result << block.call(ele)
      end
      result
    end
  
    def find (&block)
      result = nil
      found = false 
  
      each do |ele|
        if block.call(ele) 
          result = ele 
          found = true
          break
        end
      end
      found ? result : nil
    end
  
    def first 
      found = nil 
      each do |ele|
        found = ele
        break
      end
      found
    end
  
    def select(&block)
        result =[]
        self.each do |elem|
            result << elem if block.call(elem) == true
         end
        result
    end
    
  
    def find_all
    end
  
  end

  #implement reduce,collect,sort,max,min,zip
  public 
  def max
    maxelem=first 
    each do |ele|
      if ele>maxelem
        maxelem=ele
      end
    end
      maxelem
      
  end


  def min
    minelem=first 
    each do |ele|
      if ele<maxelem
        minelem=ele
      end
    end

      minelem
      
  end

  def reduce(accumulator, &block)
    each do |element|
      accumulator = block.call(accumulator, element)
    end
    accumulator
  end

  def collect
    new_ary = []
    self.each do |elem|
      new_ary << yield(elem)
    end
    new_ary
  end







