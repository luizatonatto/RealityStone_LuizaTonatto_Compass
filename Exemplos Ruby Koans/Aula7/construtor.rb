class Person

    def initialized(name, age)
        @name = name
        @age = age
    end

    def check
        puts "Instância da classe iniciada com os valores: "
        puts "Nome = #{@name}"
        puts "Idade = #{@age}"
    end
end


Person = Person.new("João",12)
Person.check
        