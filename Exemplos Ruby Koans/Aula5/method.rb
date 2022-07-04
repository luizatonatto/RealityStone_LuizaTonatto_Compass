def talk(first_name, last_name)
    puts "Olá #{first_name} #{last_name}, como você está?"
end

first_name = "Matheus"
last_name = "Maschio"

talk(first_name, last_name)

#Exemplo 2
def signal(color = "vermelho")
    puts "O sinal está #{color}"
end

signal

color = "verde"
signal(color)

signal("amarelo")
