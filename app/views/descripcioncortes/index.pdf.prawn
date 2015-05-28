pdf.text "Orden ##{@ordenproduccion.id}", :size => 30, :style => :bold, :mode => :stroke

stroke_horizontal_rule

pdf.move_down(30)

text "Fecha de Programación: #{@ordenproduccion.fechaprogramacion}"
text "Cliente: #{@ordenproduccion.cliente.clientenombre}"

text "Descripción: #{@ordenproduccion.descripcion}"
text "Referencia: #{@ordenproduccion.referencia}"
text "Corte: #{@ordenproduccion.corte.cortenombre}"
text "Ancho: #{@ordenproduccion.ancho}"
text "Tela: #{@ordenproduccion.tela.telanombre}"
text "Largo del Trazo: #{@ordenproduccion.largotrazo}"
text "Largo Tendido: #{@ordenproduccion.largotendido}"
text "Cantidad: #{@ordenproduccion.cantidad}"
text "Promedio: #{@ordenproduccion.promedio}"
text "Total Metros: #{@ordenproduccion.totalmetros}"
text "Tiqueteada: #{@ordenproduccion.tiqueteada}"

move_down 20






@descripcioncortes.each do |descripcioncorte|

text "Color: #{descripcioncorte.color.colornombre}"
text "Capas: #{descripcioncorte.ordenproduccion.capas}"  
text "Talla XS: #{descripcioncorte.tallaxs}"
text "Talla S: #{descripcioncorte.tallas}"
text "Talla M: #{descripcioncorte.tallam}"
text "Talla L: #{descripcioncorte.tallal}"
text "TallaXL: #{descripcioncorte.tallaxl}"
move_down 20

end


