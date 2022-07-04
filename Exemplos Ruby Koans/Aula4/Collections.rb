estado = []

#Para add Elementos na array
estados.push("Espírito Santo")
estados.push("Rio Grande Do Sul")
estados.push("Minas Gerais", "Rio de Janeiro", "São Paulo")


#Para inserir elementos em locais especificos da array
estados.insert(0,"Acre", "Amapá")
estados.insert(2,"Ceará")

#Para acessar elementos
estados[1] #Recupere o segundo elemento da array estados
estados[2..5] #Atráves de intervalos
estados [-2] #Penultimo elemento de estados

#Para saber a quantidade de itens em uma array 
estados.count
estados.lenght

#Descobrir se uma array está vazia
estados.empty?

#Excluindo elementos
#Remover atráves de indice
estados.delete_at(2)
#Excluir o ultimo item
estados.pop
#Excluir o primeiro item
estados.shift

