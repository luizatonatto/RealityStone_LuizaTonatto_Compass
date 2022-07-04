require_relative "animal"
require_relative "cachorro"

puts "--animal--"
animal = Animal.new
animal.pular

puts "--Cachorro--"
cachorro = Cachorro.new
cachorro.pular
cachorro.latir
