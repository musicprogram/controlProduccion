# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


colors = [{colornombre: "negro"}]
colors.each do |e|
Color.create(e) unless Color.exists?(e)
end

clientes = [{clientenombre: "Sena"}]
clientes.each do |e|
Cliente.create(e) unless Cliente.exists?(e)
end

prendas = [{prendanombre: "Jean"}]
prendas.each do |e|
Prenda.create(e) unless Prenda.exists?(e)
end

telas = [{telanombre: "Denim"}]
telas.each do |e|
Tela.create(e) unless Tela.exists?(e)
end

procesos = [{procesonombre: "Estampado"}]
procesos.each do |e|
Proceso.create(e) unless Proceso.exists?(e)
end