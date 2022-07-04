resultado = " "

loop do 
    puts resultado
    puts "Selecione uma das seguintes opções"
    puts "1- Descobrir a idade de uma pessoa"
    puts "0- Sair"
    print "Opção: "

    opção = gets.chomp.to_i

    if opção == 1
        print "Digite o ano de nascimento: "
        ano_do_nasc = gets.chomp.to_i
        print " Digite o ano atual: "
        ano_atual = gets.chomp.to_i
        age = ano_atual - ano_do_nasc
        resultado = "Quem nasceu no ano de #{ano_do_nasc}, tem #{age} anos em #{ano_atual}"
    elsif option == 0
        break
    else
        result = "Opção Inválida"
    end
    #Comando que limpa o console
    system "clear"
end
