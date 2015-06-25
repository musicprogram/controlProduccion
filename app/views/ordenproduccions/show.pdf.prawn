	require "prawn"

	



	text "CENTRO DE FORMACIÓN EN DISEÑO, CONFECCIÓN Y MODA", :align => :center, :size => 18, :style => :bold
	text "PROGRAMACIÓN DE CORTE", :align => :right, :size => 14
	text "ORDEN #{@ordenproduccion.id}", :align => :right, :size => 14, :style => :bold
move_up 35
		image "#{Rails.root}/app/assets/images/ss.png", :scale => 0.8
		move_up 30
		text "Fecha de Programación: #{@ordenproduccion.fechaprogramacion}",:align => :right,  :size => 15
	move_down 20

	stroke_horizontal_rule
		move_down 30

			text "Referencia: #{@ordenproduccion.referencia}", :size => 15
		move_up 20
			text "Cliente: #{@ordenproduccion.cliente.clientenombre rescue nil}", :align => :right, :size => 15

	
		move_down 25


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
			text "Corte: #{@ordenproduccion.corte.cortenombre rescue nil}", :size => 15



		move_up 55
			text "Promedio: #{@ordenproduccion.promedio.round(2)}", :align => :right, :size => 15
			text "Total Metros: #{@ordenproduccion.totalmetros.round(2)}", :align => :right, :size => 15 

			text "Prenda: #{@ordenproduccion.prenda.prendanombre rescue nil}",:align => :right, :size => 15




			move_down 10
			text "#{@ordenproduccion.descripcion}", :size => 15
		move_down 20	
	stroke_horizontal_rule		


move_down 20

	@ordenproduccion.descripcioncortes.each do |descripcioncorte|

		text "#{descripcioncorte.color.colornombre rescue nil}",  :size => 20,:style => :bold
		text "Talla S: #{descripcioncorte.tallas}", :align => :right,  :size => 15

		text "Talla L: #{descripcioncorte.tallal}", :align => :right,  :size => 15

		

		text "Total Color: #{descripcioncorte.tallasuma}", :align => :right,  :size => 20,:style => :bold

		move_up 53

			text "Talla XS: #{descripcioncorte.tallaxs}",  :size => 15
			text "Total M: #{descripcioncorte.tallam}",  :size => 15
			text "TallaXL: #{descripcioncorte.tallaxl}",  :size => 15
			
			stroke_horizontal_rule	
		move_down 10

	end