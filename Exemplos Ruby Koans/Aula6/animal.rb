class Animal
    def pular
        puts "Toing! tóim! bóim! póim!"
    end

    def dormir
        puts "zzzzzz"
    end
end

class Cachorro < Animal
    def latir
        puts "Au Au"
    end
end


Cachorro = Cachorro.new
Cachorro.pular
Cachorro.dormir

