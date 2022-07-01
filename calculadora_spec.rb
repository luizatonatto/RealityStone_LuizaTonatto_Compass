require 'rspec'
require_relative '../src/calculadora'

describe('TDD ADIÇÃO') do
    calculadora = Calculadora.new

    it("Deve somar um número qualquer com 0")do
    expect(calculadora.soma(9,0)).to eq 9
    end

    it("Deve somar o número 0 com qualquer número")do
    expect(calculadora.soma(0,88)).to eq 88
    end

    it("Deve somar números inteiros positivos")do
    expect(calculadora.soma(4,5)).to eq 9
    end

    it("Deve somar números iguais")do
    expect(calculadora.soma(65,65)).to eq 130
    end

    it("Deve somar números float positivos com resultado float")do
    expect(calculadora.soma(9.25,2.77)).to eq 12.02
    end

    it("Deve somar números float positivos com resultado inteiro")do
    expect(calculadora.soma(12.75,2.25)).to eq 15
    end

    it("Deve somar números inteiros negativos")do
    expect(calculadora.soma(-10,-9)).to eq -19
    end

    it("Deve somar números float negativos com resultado float")do
    expect(calculadora.soma(-6.08,-5.03)).to eq -11.11
    end

    it("Deve somar números float negativos com resultado inteiro")do
    expect(calculadora.soma(-1.39,-6.61)).to eq -8
    end

    it("Deve somar número inteiro positivo com número float negativo")do
    expect(calculadora.soma(10,-3.9)).to eq 6.1
    end

    it("Deve somar número float positivo com número inteiro negativo")do
    expect(calculadora.soma(8.25,-1)).to eq 7.25
    end

    it("Deve somar números negativos com positivos")do
    expect(calculadora.soma(-30, 10)).to eq -20
    end

    it("Deve somar números positivos com negativos")do
    expect(calculadora.soma(10, -30)).to eq -20
    end
end

describe('TDD SUBTRAÇÃO') do
    calculadora = Calculadora.new

    it("Deve subtrair 0 com qualquer número")do
    expect(calculadora.subtrai(0,15)).to eq -15
    end 

    it("Deve subtrair qualquer número com 0")do
    expect(calculadora.subtrai(33,0)).to eq 33
    end

    it("Deve subtrair dois inteiros positivos")do
    expect(calculadora.subtrai(10,2)).to eq 8
    end

    it("Deve subtrair números float positivos")do
    expect(calculadora.subtrai(17.6,2.3)).to eq 15.3
    end

    it("Deve subtrair dois inteiros negativos")do
    expect(calculadora.subtrai(-2,-8)).to eq 6
    expect(calculadora.subtrai(-8,-2)).to eq -6
    end
    
    it("Deve subtrair números float negativos")do
    expect(calculadora.subtrai(-6.5,-1.9)).to eq -4.6
    expect(calculadora.subtrai(-1.9,-6.5)).to eq 4.6
    end

    it("Deve subtrair número inteiro negativo com número inteiro positivo")do
    expect(calculadora.subtrai(-8, 10)).to eq -18
    end

    it("Deve subtrair número inteiro positivo com número inteiro negativo")do
    expect(calculadora.subtrai(7, -10)).to eq 17
    end
end

describe('TDD MULTIPLICAÇÃO') do
    calculadora = Calculadora.new

    it("Deve multiplicar 0 com qualquer número")do
    expect(calculadora.multiplica(0,3)).to eq 0
    end

    it("Deve multiplicar qualquer número com 0")do
    expect(calculadora.multiplica(8,0)).to eq 0
    end

    it("Deve multiplicar números inteiro positivos")do
    expect(calculadora.multiplica(6,5)).to eq 30
    end

    it("Deve multiplicar números float positivos")do
    expect(calculadora.multiplica(2.9,6.3)).to eq 18.27
    end

    it("Deve multiplicar números inteiros negativos")do
    expect(calculadora.multiplica(-4,-2)).to eq 8
    end

    it("Deve multiplicar números float negativos")do
    expect(calculadora.multiplica(-9.1,-5.9)).to eq 53.69
    end

    it("Deve multiplicar número inteiro positivo com número inteiro negativo")do
    expect(calculadora.multiplica(3,-5)).to eq -15
    end

    it("Deve multiplicar número inteiro negativo com número inteiro positivo")do
    expect(calculadora.multiplica(-6,3)).to eq -18
    end

    it("Deve multiplicar número inteiro positivo com número float positivo")do
    expect(calculadora.multiplica(2, 7.2)).to eq 14.4
    end

    it("Deve multiplicar número inteiro negativo com número float positivo")do
    expect(calculadora.multiplica(-9, 4.5)).to eq -40.5
    end

    it("Deve multiplicar número float negativo com número float positivo")do
    expect(calculadora.multiplica(-8.6,1.02)).to eq -8.77
    end
end

describe('TDD DIVISÃO') do
    calculadora = Calculadora.new

    it("Deve dividir qualquer número por 0")do
    expect(calculadora.divide(3,0)).to include "ERROR! Não é possível dividir um número por 0"
    end 

    it("Deve dividir 0 por qualquer número")do
    expect(calculadora.divide(0,3)).to eq 0
    end

    it("Deve dividir qualquer número por si mesmo")do
    expect(calculadora.divide(17,17)).to eq 1
    end

    it("Deve dividir números positivos inteiros com resultado inteiro")do
    expect(calculadora.divide(30,5)).to eq 6
    end

    it("Deve dividir números positivos inteiros com resultado float")do
    expect(calculadora.divide(5,3)).to eq 1.67
    end

    it("Deve dividir números positivos inteiros com números negativos inteiros")do
    expect(calculadora.divide(70,-10)).to eq -7
    end

    it("Deve dividir números negativos inteiros com resultado positivo")do
    expect(calculadora.divide(-4,-2)).to eq 2
    end

    it("Deve dividir números negativos inteiros com resultado float")do
    expect(calculadora.divide(-15,-8)).to eq 1.88
    end

    it("Deve dividir números positivos float com números negativos inteiros")do
    expect(calculadora.divide(5.3,-4)).to eq -1.33
    end

    it("Deve dividir números positivos float com resultado float")do
    expect(calculadora.divide(10.5,4.7)).to eq 2.23
    end

    it("Deve dividir números negativos float com resultado float")do
    expect(calculadora.divide(-3.88,-1.34)).to eq 2.90
    end

    it("Deve dividir números positivos float com resultado inteiro")do
    expect(calculadora.divide(20.4,5.1)).to eq 4
    end

    it("Deve dividir números negativos float com resultado inteiro")do
    expect(calculadora.divide(-50.4,-7.2)).to eq 7
    end

    it("Deve dividir número negativo inteiro com número positivo inteiro")do
    expect(calculadora.divide(-6,3)).to eq -2
    end

    it("Deve dividir número negativo float com número positivo inteiro")do
    expect(calculadora.divide(-2.7, 3)).to eq -0.9
    end

    it("Deve dividir número negativo float com número positivo float")do
    expect(calculadora.divide(-10.5,0.5)).to eq -21
    end

    it("Deve dividir número negativo inteiro com número positivo float")do
    expect(calculadora.divide(-9, 4.8)).to eq -1.88
    end
end

describe('TDD POTENCIAÇÃO') do
    calculadora = Calculadora.new
    
    it("Deve potencializar qualquer número por 0")do
    expect(calculadora.potencial(4,0)).to eq 1
    end

    it("Deve potencializar o número 0 por 0")do
    expect(calculadora.potencial(0,0)).to eq 1
    end

    it("Deve potencializar o número 0 por qualquer número")do
    expect(calculadora.potencial(0,10)).to eq 0
    end
    
    it("Deve potencializar números positivos por 1")do
    expect(calculadora.potencial(69,1)).to eq 69
    end

    it("Deve potencializar números negativos por 1")do
    expect(calculadora.potencial(-100,1)).to eq -100
    end

    it("Deve potencializar números positivos inteiros")do
    expect(calculadora.potencial(2,3)).to eq 8
    end

    it("Deve potencializar números positivos com expoente par negativo")do
    expect(calculadora.potencial(4,-2)).to eq 0.0625
    end 

    it("Deve potencializar números positivos com expoente ímpar negativo")do
    expect(calculadora.potencial(5,-3)).to eq 0.008
    end 

    it("Deve potencializar números negativos com expoente par negativo")do
    expect(calculadora.potencial(-10,-6)).to eq 0.000001
    end

    it("Deve potencializar números negativos com expoente ímpar negativo")do
    expect(calculadora.potencial(-2,-3)).to eq -0.125
    end 

    it("Deve potencializar números negativos com expoente par positivo")do
    expect(calculadora.potencial(-5,4)).to eq 625
    end

    it("Deve potencializar números negativos com expoente ímpar positivo")do
    expect(calculadora.potencial(-7,5)).to eq -16807
    end

    it("Deve potencializar números positivos float com expoente par positivo")do
    expect(calculadora.potencial(4.6,2)).to eq 21.16
    end

    it("Deve potencializar números positivos float com expoente par negativo")do
    expect(calculadora.potencial(1.3,-4)).to eq 0.350128
    end

    it("Deve potencializar números positivos float com expoente ímpar positivo")do
    expect(calculadora.potencial(5.19, 3)).to eq 139.798359
    end

    it("Deve potencializar números positivos float com expoente ímpar negativo")do
    expect(calculadora.potencial(2.4,-5)).to eq 0.012559
    end

    it("Deve potencializar números negativos float com expoente positivo")do
    expect(calculadora.potencial(-3.5, 5)).to eq -525.21875
    end

    it("Deve potencializar números negativos float com expoente negativo")do
    expect(calculadora.potencial(-1.3, 3)).to eq -2.197
    end

    it("Deve potencializar números positivos por 1")do
    expect(calculadora.potencial(9,1)).to eq 9
    end

    it("Deve potencializar números negativos por 1")do
    expect(calculadora.potencial(-100,1)).to eq -100
    end
end

describe('TDD RADICIAÇÃO QUADRADA') do
    calculadora = Calculadora.new
    
    it("Deve calcular a raizQ de 0")do
    expect(calculadora.raizQ(0)).to eq 0
    end

    it("Deve calcular a raizQ de 1")do
    expect(calculadora.raizQ(1)).to eq 1
    end

    it("Deve calcular a raizQ de números inteiros negativos")do
    expect(calculadora.raizQ(-6)).to include "ERROR! Não existe raiz quadrada de números negativos."
    end

    it("Deve calcular a raizQ de números float negativos")do
    expect(calculadora.raizQ(-34.5)).to include "ERROR! Não existe raiz quadrada de números negativos."
    end

    it("Deve calcular a raizQ de números float positivos")do
    expect(calculadora.raizQ(49.8)).to eq 7.06
    end

    it("Deve calcular a raizQ de números inteiros positivos com resultado inteiro")do
    expect(calculadora.raizQ(4)).to eq 2
    end

    it("Deve calcular a raizQ de números inteiros positivos com resultado float")do
    expect(calculadora.raizQ(5)).to eq 2.24
    end
end

describe('TDD RADICIAÇÃO CÚBICA') do
    calculadora = Calculadora.new
    
    it("Deve calcular a raizC de 0")do
    expect(calculadora.raizC(0)).to eq 0
    end

    it("Deve calcular a raizC de 1")do
    expect(calculadora.raizC(1)).to eq 1
    end

    it("Deve calcular a raizC de números inteiros negativos")do
    expect(calculadora.raizC(-8)).to include "ERROR! Não existe raiz cúbica de números negativos."
    end

    it("Deve calcular a raizC de números float negativos")do
    expect(calculadora.raizC(-4.9)).to include "ERROR! Não existe raiz cúbica de números negativos."
    end

    it("Deve calcular a raizC de números float positivos")do
    expect(calculadora.raizC(76.2)).to eq 4.24
    end

    it("Deve calcular a raizC de números inteiros positivos com resultado inteiro")do
    expect(calculadora.raizC(125)).to eq 5
    end

    it("Deve calcular a raizC de números inteiros positivos com resultado float")do
    expect(calculadora.raizC(36)).to eq 3.3
    end
end

describe('TDD VOLUME') do
    calculadora = Calculadora.new
    
    it("Deve calcular o volume com largura 0")do
    expect(calculadora.volume(0, 12, 30)).to eq 0
    end

    it("Deve calcular o volume com altura 0")do
    expect(calculadora.volume(24, 0, 9)).to eq 0
    end

    it("Deve calcular o volume com comprimento 0")do
    expect(calculadora.volume(11, 45, 0)).to eq 0
    end

    it("Deve calcular o volume com medidas inteiras positivas")do
    expect(calculadora.volume(6, 7, 2)).to eq 84
    end

    it("Deve calcular o volume com medidas float positivas")do
    expect(calculadora.volume(5.4, 3.2, 10.1)).to eq 174.53
    end

    it("Deve calcular o volume com medidas inteiras negativas")do
    expect(calculadora.volume(-9, -11, -8)).to include "Volume ERROR! Não existe largura, altura ou comprimento com valores negativos!"
    end

    it("Deve calcular o volume com medidas float negativas")do
    expect(calculadora.volume(-4.9, -1.6, -11.3)).to include "Volume ERROR! Não existe largura, altura ou comprimento com valores negativos!"
    end
end