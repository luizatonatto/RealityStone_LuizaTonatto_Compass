require 'rspec'
require_relative '../src/calculadora'

describe('TDD SOMA') do
    calculadora = Calculadora.new

    it("Deve somar dois inteiros positivos")do
    expect(calculadora.soma(4,5)).to eq 9
    end

    it("Deve somar um número qualquer com 0")do
    expect(calculadora.soma(9,0)).to eq 9
    end

    it("Deve somar números negativos")do
    expect(calculadora.soma(-10,-9)).to eq -19
    end

    it("Deve somar números negativos com positivos")do
    expect(calculadora.soma(-30, 10)).to eq -20
    expect(calculadora.soma(10, -30)).to eq -20
    end
end
describe('TDD SUBTRAÇÃO') do
    calculadora = Calculadora.new

    it("Deve subtrair dois inteiros positivos")do
    expect(calculadora.subtrai(8,2)).to eq 6
    end

    it("Deve subtrair dois inteiros negativos")do
    expect(calculadora.soma(-2,-8)).to eq -10
    end

    it("Deve subtrair qualquer número com 0")do
    expect(calculadora.subtrai(0,15)).to eq -15
    expect(calculadora.subtrai(15,0)).to eq 15
    end

    it("Deve subtrair números negativos com positivos")do
    expect(calculadora.subtrai(-8, 10)).to eq -18
    expect(calculadora.subtrai(8, -10)).to eq 18
    end
end

describe('TDD MULTRIPLICAÇÃO') do
    calculadora = Calculadora.new

    it("Deve multiplicar qualquer número com 0")do
    expect(calculadora.multiplica(0,3)).to eq 0
    expect(calculadora.multiplica(8,0)).to eq 0
    end

    it("Deve multiplicar números positivos")do
    expect(calculadora.multiplica(6,5)).to eq 30
    end

    it("Deve multiplicar números negativos")do
    expect(calculadora.multiplica(-4,-2)).to eq 8
    end

    it("Deve multiplicar números negativos com positivos")do
    expect(calculadora.multiplica(-5,3)).to eq -15
    expect(calculadora.multiplica(3,-5)).to eq -15
    end
end

describe('TDD DIVISÃO') do
    calculadora = Calculadora.new
'''
    it("Deve dividir qualquer número com 0")do
    expect(calculadora.divide(3,0)).to eq 0
    expect(calculadora.divide(0,3)).to eq 0
    end
'''
    it("Deve dividir números positivos")do
    expect(calculadora.divide(30,5)).to eq 6
    #expect(calculadora.divide(5,3)).to eq (1.66.round(2))
    end

    it("Deve dividir números negativos")do
    expect(calculadora.divide(-4,-2)).to eq 2
    end

    it("Deve dividir negativos com positivos")do
    expect(calculadora.divide(-6,3)).to eq -2
    expect(calculadora.divide(10,-5)).to eq -2
    end
end

describe('TDD POTENCIAÇÃO') do
    calculadora = Calculadora.new
    
    it("Deve potencializar qualquer número com 0")do
    expect(calculadora.potencial(4,0)).to eq 1
    expect(calculadora.potencial(0,0)).to eq 1
    expect(calculadora.potencial(0,4)).to eq 0
    end
    
    it("Deve potencializar números positivos")do
    expect(calculadora.potencial(2,3)).to eq 8
    end
    
    it("Deve potencializar números negativos")do
    #expect(calculadora.potencial(-4,-2)).to eq 0.6
    end
    
    it("Deve potencializar números negativos com positivos")do
    #expect(calculadora.potencial(4,-2)).to eq 0.6
    expect(calculadora.potencial(-4,1)).to eq -4
    # pedi sobre par e impar
    end
end