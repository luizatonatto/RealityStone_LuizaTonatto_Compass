class Calculadora

    def soma(a,b)
        a + b
    end


    def subtrai(a,b)
        a - b
    end


    def multiplica(a,b)
        (a*b.to_f).round(2)
    end


    def divide(a,b)
        if b == 0
            return "ERROR! Não é possível dividir um número por 0."
        end
        if (a/b) != 0
            return (a/b.to_f).round(2)
        end
    a / b
    end

    def potencial(a,b)
        if a or b < 0
         return (a**b.to_f).round(6)
        end
    (a ** b)
    end

    def raizQ (a)
        if a < 0
            return "ERROR! Não existe raiz quadrada de números negativos."
        end
    Math.sqrt(a).to_f.round(2)
    end

    def raizC (a)
        if a < 0
            return "ERROR! Não existe raiz cúbica de números negativos."
        end
    Math.cbrt(a).to_f.round(2)
    end

    def volume(l, a, c)
        if l < 0 or a < 0 or c < 0
            return "Volume ERROR! Não existe largura, altura ou comprimento com valores negativos!"
        end

        (l * a * c).to_f.round(2)
    end
end
        
