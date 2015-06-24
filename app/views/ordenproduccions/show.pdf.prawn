	require "prawn"

	



text "CENTRO DE FORMACION EN DISEÑO, CONFECCION Y MODA", :align => :center, :size => 18, :style => :bold
text "PROGRAMACION DE CORTE", :align => :right, :size => 14
text "ORDEN 000#{@ordenproduccion.id}", :align => :right, :size => 14, :style => :bold
move_up 35
	image "#{Rails.root}/app/assets/images/ss.png", :scale => 0.5

move_down 20

	stroke_horizontal_rule
		move_down 30

			text "Referencia: #{@ordenproduccion.referencia}", :size => 15
			text "Fecha de Programación: #{@ordenproduccion.fechaprogramacion}",  :size => 15

		move_up 35
			text "Cliente: #{@ordenproduccion.cliente.clientenombre rescue nil}", :align => :right, :size => 15

		

		move_down 30


			text "Largo Tendido: #{@ordenproduccion.largotendido}", :size => 15
			text "Tela: #{@ordenproduccion.tela.telanombre rescue nil}",:size => 15
			text "Cantidad: #{@ordenproduccion.cantidad}", :size => 15
		move_up 60
			text "Largo del Trazo: #{@ordenproduccion.largotrazo}",:align => :right, :size => 15
			text "Ancho: #{@ordenproduccion.ancho}",:align => :right, :size => 15
			text "Veces en el Trazo: #{@ordenproduccion.vecestrazo}", :align => :right, :size => 15

		move_down 20	
				

			text "Tiqueteada: #{@ordenproduccion.tiqueteada}", :size => 15
			text "Capas: #{@ordenproduccion.capas}"  , :size => 15
			text "Responsable del Corte: #{@ordenproduccion.responsablecorte}", :size => 15
			text "Prenda: #{@ordenproduccion.prenda.prendanombre rescue nil}", :size => 15
		move_up 70
			text "Promedio: #{@ordenproduccion.promedio}", :align => :right, :size => 15
			text "Total Metros: #{@ordenproduccion.totalmetros}", :align => :right, :size => 15 

			text "#{@ordenproduccion.descripcion}", :align => :right,:size => 15

			text "Corte: #{@ordenproduccion.corte.cortenombre rescue nil}", :align => :right, :size => 15
		move_down 10	
	stroke_horizontal_rule		


move_down 20

	@ordenproduccion.descripcioncortes.each do |descripcioncorte|

		text "Color: #{descripcioncorte.color.colornombre rescue nil}",  :size => 15
		text "Talla S: #{descripcioncorte.tallas}", :align => :right,  :size => 15

		text "Talla L: #{descripcioncorte.tallal}", :align => :right,  :size => 15

		

		text "Total: #{descripcioncorte.tallasuma}", :align => :right,  :size => 15


		move_up 53

			text "Talla XS: #{descripcioncorte.tallaxs}",  :size => 15
			text "Total M: #{descripcioncorte.tallam}",  :size => 15
			text "TallaXL: #{descripcioncorte.tallaxl}",  :size => 15
			

			stroke_horizontal_rule	
		move_down 10

	end

