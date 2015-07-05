	require "prawn"

	



	text "CENTRO DE FORMACIÓN EN DISEÑO, CONFECCIÓN Y MODA", :align => :center, :size => 18, :style => :bold
		stroke_horizontal_rule	
	move_down 10
	text "PROGRAMACIÓN DE CORTE", :align => :right, :size => 14
	text "ORDEN #{@ordenproduccion.id}", :align => :right, :size => 14, :style => :bold
move_up 35
		image "#{Rails.root}/app/assets/images/ss.png", :scale => 0.6
		move_up 15
		text "Fecha de Programación: #{@ordenproduccion.fechaprogramacion}",:align => :right,  :size => 15
	move_down 10

	stroke_horizontal_rule
		move_down 20

			text "Referencia: #{@ordenproduccion.referencia}", :size => 12,:style => :bold
		move_up 20
			text "Cliente: #{@ordenproduccion.cliente.clientenombre rescue nil}", :align => :right, :size => 12

	
		move_down 15


			text "Largo Tendido: #{@ordenproduccion.largotendido}", :size => 12
			text "Tela: #{@ordenproduccion.tela.telanombre rescue nil}",:size => 12
			text "Cantidad: #{@ordenproduccion.cantidad}", :size => 12
		move_up 50
			text "Largo del Trazo: #{@ordenproduccion.largotrazo}",:align => :right, :size => 12
			text "Ancho: #{@ordenproduccion.ancho}",:align => :right, :size => 12
			text "Veces en el Trazo: #{@ordenproduccion.vecestrazo}", :align => :right, :size => 12

		move_down 20	
				

			text "Tiqueteada: #{@ordenproduccion.tiqueteada}", :size => 12
			text "Capas: #{@ordenproduccion.capas}"  , :size => 12
			text "Responsable del Corte: #{@ordenproduccion.responsablecorte}", :size => 12
			text "Corte: #{@ordenproduccion.corte.cortenombre rescue nil}", :size => 12
			text "Prenda: #{@ordenproduccion.prenda.prendanombre rescue nil}",:size => 12



		move_up 55
			text "Promedio: #{@ordenproduccion.promedio}", :align => :right, :size => 15,:style => :bold
			text "Total Metros: #{@ordenproduccion.totalmetros}", :align => :right, :size => 15 ,:style => :bold

		




			move_down 25
			text "#{@ordenproduccion.descripcion}", :size => 10,:style => :bold
		move_down 10	
	stroke_horizontal_rule		


move_down 5

	@ordenproduccion.descripcioncortes.each do |descripcioncorte|

		text "Color: #{descripcioncorte.color.colornombre rescue nil}",  :size => 10,:style => :bold
		  if descripcioncorte.tallas == 0
			move_down 4
		    elsif 
				text "Talla S: #{descripcioncorte.tallas}",:size => 8
	    end 
		
		 if descripcioncorte.tallal == 0 
			move_down 4
		    elsif 	
		text "Talla L: #{descripcioncorte.tallal}", :size => 8
         	end 
		

		text "Total Color: #{descripcioncorte.tallasuma}", :size => 10,:style => :bold

		move_up 30
			if descripcioncorte.tallaxs == 0 
			move_down 4	
		    elsif 
				text "Talla XS: #{descripcioncorte.tallaxs}",  :size => 8
			end
			if descripcioncorte.tallam == 0 
			move_down 4	
		    elsif 
				text "Total M: #{descripcioncorte.tallam}",  :size => 8
			end
			if descripcioncorte.tallaxl == 0 
			move_down 4	
		    elsif 
				text "TallaXL: #{descripcioncorte.tallaxl}",  :size => 8
			end
			move_down 4
			stroke_horizontal_rule	
		

	end
	
	
	
	
	
	