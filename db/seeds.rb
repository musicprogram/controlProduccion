# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


colors = [{colornombre: "Negro"},{colornombre: "Blanco"},{colornombre: "Azul"},{colornombre: "Morado"},{colornombre: "Beige"},
{colornombre: "Rosado"},{colornombre: "Amarillo"}, {colornombre: "Naranja"}, {colornombre: "Café"},{colornombre: "Neon"},
{colornombre: "Verde"},{colornombre: "Estampado"}]
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

telas = [{telanombre: "Algodon"},{telanombre: "Dacron"},{telanombre: "Viscosa"},{telanombre: "Lycra"},{telanombre: "Poliester"},
{telanombre: "Encaje"},{telanombre: "Indigo"},{telanombre: "Chalis"},{telanombre: "Chifon"},{telanombre: "Popelina"},
{telanombre: "Nautica"},{telanombre: "Piqué"},{telanombre: "Drill"},{telanombre: "Blonda"}, {telanombre: "Satin"},{telanombre: "Maya"},{telanombre: "Denim"}]
telas.each do |e|
Tela.create(e) unless Tela.exists?(e)
end

procesos = [{procesonombre: "Estampado"}]
procesos.each do |e|
Proceso.create(e) unless Proceso.exists?(e)
end

cortes = [{cortenombre: "Mecánico"},{cortenombre: "Vértical"},{cortenombre: "Cinfín"}]
cortes.each do |e|
Corte.create(e) unless Corte.exists?(e)
end

modulos = [{modulonombre: "Ropa interior y Deportiva"},{modulonombre: "Jeans Dryll"},{modulonombre: "Exterior"},{modulonombre: "Produccion"}]
modulos.each do |e|
Modulo.create(e) unless Modulo.exists?(e)
end

nombres = [{nombreinstructor: "Arelis Sierra"},{nombreinstructor: "Jennifer Vargaz"},{nombreinstructor: "Henry Ramirez"},{nombreinstructor: "Maydee Guevara"},{nombreinstructor: "Elsa Rodriguez"}]
nombres.each do |e|
Nombre.create(e) unless Nombre.exists?(e)
end


tallas = [{nombre: "S"},{nombre: "M"},{nombre: "L"},{nombre: "XS"},{nombre: "XL"}]
tallas.each do |e|
Talla.create(e) unless Talla.exists?(e)
end

#nombres = [{nombreinstructor: "Arelis Sierra"},{nombreinstructor: "Jennifer Vargaz"},{nombreinstructor: "Henry Ramirez"},{nombreinstructor: "Maydee Guevara"},{nombreinstructor: "Elsa Rodriguez"},{nombreinstructor: "Carolina Paniagua"},{nombreinstructor: "Maria Eugenia Bedoya"}, { nombreinstructor: "Jhon Jairo Clavijo"} ,{nombreinstructor: "Mauricio echeverry"},{nombreinstructor: "Lennis Giraldo"},{nombreinstructor: "Aura Jaramillo"},{nombreinstructor: "Doris Llano"},{nombreinstructor: "Ruth Mesa"},{nombreinstructor: "Gladis Patiño"},{nombreinstructor: "Angela Quintero"},{nombreinstructor: "Viky Toro"},{nombreinstructor: "Johanna Velasquez"},{nombreinstructor: "Salon Parejo"},{nombreinstructor: "Dolores Correa"},{nombreinstructor: "Natalia Mesa"},{nombreinstructor: "Fanny Rodriguez"},{nombreinstructor: "Martha Tapias"},{nombreinstructor: "Diana Lujan"},{nombreinstructor: "Maria Martinez"},{nombreinstructor: "Beatriz Martinez"},{nombreinstructor: "Angela Alvarez"},{nombreinstructor: "Ana Lucia"},{nombreinstructor: "Jose Luis Cardona"},{nombreinstructor: "Yadira Ochoa"}]
#nombres.each do |e|
#Nombre.create(e) unless Nombre.exists?(e)
#end
