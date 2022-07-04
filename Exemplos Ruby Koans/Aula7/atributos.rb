class dog 
    def name
        @name
    end

    def name= name
        @name = name
    end
end

dog = dog.new
dog.name = "Marlon"
puts dog.name