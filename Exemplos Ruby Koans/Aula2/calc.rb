puts "Insira 2 numeros para calcularmos!"

print "Digite um número inteiro: "
#.to_i transforma a string em um numero inteiro
numero1 = gets.chomp.to_i
print "Digite o segundo número inteiro: "
numero2 = gets.chomp.to_i
soma = numero1 + numero2
puts "O resultado da adição entre os dois números é: #{soma}"
