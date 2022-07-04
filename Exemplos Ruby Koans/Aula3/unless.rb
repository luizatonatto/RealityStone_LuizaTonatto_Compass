produto_status = "Fechado"

unless produto_status == "Aberto"
    verifica_mudança = "Posso"
else 
    verifica_mudança = "Não Posso"
end 

puts "Você #{verifica_mudança} mudar o produto"
