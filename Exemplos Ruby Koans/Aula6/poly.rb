class Instrumento
    def escrever
        puts "Escrevendo"
    end
end

class Teclado < Instrumento
end

class Lapis < Instrumento
    def escrever
        puts "Escrevendo à Lápis"
    end
end

class Caneta < Instrumento
    def escrever
        puts "Escrevendo à caneta"
    end
end

Teclado = Teclado.new
Lapis = Lapis.new
Caneta = Caneta.new

puts "Teclado:" 
Teclado.escrever
puts "Lápis:"
Lapis.escrever
puts "Caneta:"
Caneta.escrever