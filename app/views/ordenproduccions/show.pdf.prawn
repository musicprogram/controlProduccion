	require "prawn"

	



	text "CENTRO DE FORMACIÓN EN DISEÑO, CONFECCIÓN Y MODA", :align => :center, :size => 14, :style => :bold
		stroke_horizontal_rule	
	move_down 10
	text "PROGRAMACIÓN DE CORTE", :align => :right, :size => 13
	text "ORDEN #{@ordenproduccion.id}", :align => :right, :size => 13, :style => :bold
move_up 35
		image "#{Rails.root}/app/assets/images/ss.png", :scale => 0.6
		move_up 15
		text "FECHA DE PROGRAMACIÓN: #{@ordenproduccion.fechaprogramacion}",:align => :right,  :size => 13
	move_down 10

	stroke_horizontal_rule
		move_down 13

			text "Referencia: #{@ordenproduccion.referencia}", :size => 12,:style => :bold
		move_up 18
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
			text "#{@ordenproduccion.descripcion.upcase}", :size => 10,:style => :bold
		move_down 10
		
		

	stroke_horizontal_rule	
	


move_down 5

	

	@ordenproduccion.descripcioncortes.each do |descripcioncorte|

	move_down 1
		
			
		  if descripcioncorte.material == false || descripcioncorte.material == nil
		  
		  	if descripcioncorte.tallaxs == 0 
				
			    elsif 
					text "Talla XS: #{descripcioncorte.tallaxs}",  :size => 8
			end
		  
			if descripcioncorte.tallas == 0
				
			    elsif 
					text "Talla S: #{descripcioncorte.tallas}",:size => 8
		    end 
		
		 	if descripcioncorte.tallal == 0 
				
			    elsif 	
				text "Talla L: #{descripcioncorte.tallal}", :size => 8
         	end 
		
		
			if descripcioncorte.tallam == 0 
		
		    elsif 
				text "Talla M: #{descripcioncorte.tallam}",  :size => 8
			end
			
			if descripcioncorte.tallaxl == 0 
				
		    elsif 
				text "Talla XL: #{descripcioncorte.tallaxl}",  :size => 8
			end
			
			if descripcioncorte.talla6 == 0 
					
			    elsif 
					text "Talla 6: #{descripcioncorte.talla6}",  :size => 8
			end
			
			if descripcioncorte.talla8 == 0 
					
			    elsif 
					text "Talla 8: #{descripcioncorte.talla8}",  :size => 8
			end
			
			if descripcioncorte.talla10 == 0 
					
			    elsif 
					text "Talla 10: #{descripcioncorte.talla10}",  :size => 8
			end
			
			if descripcioncorte.talla12 == 0 
					
			    elsif 
					text "Talla 12: #{descripcioncorte.talla12}",  :size => 8
			end
			
			if descripcioncorte.talla14 == 0 
					
			    elsif 
					text "Talla 14: #{descripcioncorte.talla14}",  :size => 8
			end
			
			
			if descripcioncorte.talla28 == 0 
					
			    elsif 
					text "Talla 28: #{descripcioncorte.talla28}",  :size => 8
			end
			
			if descripcioncorte.talla30 == 0 
					
			    elsif 
					text "Talla 30: #{descripcioncorte.talla30}",  :size => 8
			end
			
			if descripcioncorte.talla32 == 0 
					
			    elsif 
					text "Talla 32: #{descripcioncorte.talla32}",  :size => 8
			end
			
				if descripcioncorte.talla34 == 0 
				
		    elsif 
				text "Talla 34: #{descripcioncorte.talla34}",  :size => 8
			end
			
			if descripcioncorte.talla36 == 0 
					
			    elsif 
					text "Talla 36: #{descripcioncorte.talla36}",  :size => 8
			end
			
		move_down 5
			
		move_up 15
			
			text "Color: #{descripcioncorte.color.colornombre rescue nil}",  :size => 8,:style => :bold,:align => :right
		  
			
			text "Total Color: #{descripcioncorte.tallasuma}", :size => 10,:style => :bold,:align => :right
			
			
		move_up 3
			
			stroke_horizontal_rule	
		
		move_down 5
		  
		  end
		
	end
	

mate = 1
		
	@ordenproduccion.materiales.each do |material|
		


		text "MATERIAL #{ mate }", :align => :center, :size => 10,:style => :bold
		text "ancho: #{material.anchom}",  :size => 8, :align => :right
		
		text "Largo Trazo: #{material.largotrazom}",  :size => 8, :align => :right
		
		text "Veces en el Trazo: #{material.vecestrazom}",  :size => 8, :align => :right
		
		text "Promedio: #{material.promedio}",  :size => 8, :align => :right
		
		text "Total Metros: #{material.totalmetros}",  :size => 8, :align => :right
		
	move_up 40
		
		text "Tela: #{material.tela.telanombre rescue nil}",  :size => 8
		
		text "Largo Tendido: #{material.largotendidom}",  :size => 8
		
		text "Capas: #{material.capasm}",  :size => 8
		
		text "Cantidad: #{material.cantidad}",  :size => 8
		
		text "Color: #{material.color.colornombre rescue nil}",  :size => 8
		
	move_down 5	
	stroke_horizontal_rule	
	move_down 5	
		mate = mate + 1 
	end
	
	

	
		@ordenproduccion.descripcioncortes.each do |descripcioncorte|
		
			
		  if descripcioncorte.material == true	
		  
		  	if descripcioncorte.tallaxs == 0 
				
			    elsif 
					text "Talla XS: #{descripcioncorte.tallaxs}",  :size => 8
			end
		  
			if descripcioncorte.tallas == 0
				
			    elsif 
					text "Talla S: #{descripcioncorte.tallas}",:size => 8
		    end 
		
		 	if descripcioncorte.tallal == 0 
				
			    elsif 	
				text "Talla L: #{descripcioncorte.tallal}", :size => 8
         	end 
		
		
			if descripcioncorte.tallam == 0 
		
		    elsif 
				text "Talla M: #{descripcioncorte.tallam}",  :size => 8
			end
			
			if descripcioncorte.tallaxl == 0 
				
		    elsif 
				text "Talla XL: #{descripcioncorte.tallaxl}",  :size => 8
			end
			
			if descripcioncorte.talla6 == 0 
					
			    elsif 
					text "Talla 6: #{descripcioncorte.talla6}",  :size => 8
			end
			
			if descripcioncorte.talla8 == 0 
					
			    elsif 
					text "Talla 8: #{descripcioncorte.talla8}",  :size => 8
			end
			
			if descripcioncorte.talla10 == 0 
					
			    elsif 
					text "Talla 10: #{descripcioncorte.talla10}",  :size => 8
			end
			
			if descripcioncorte.talla12 == 0 
					
			    elsif 
					text "Talla 12: #{descripcioncorte.talla12}",  :size => 8
			end
			
			if descripcioncorte.talla14 == 0 
					
			    elsif 
					text "Talla 14: #{descripcioncorte.talla14}",  :size => 8
			end
			
			
			if descripcioncorte.talla28 == 0 
					
			    elsif 
					text "Talla 28: #{descripcioncorte.talla28}",  :size => 8
			end
			
			if descripcioncorte.talla30 == 0 
					
			    elsif 
					text "Talla 30: #{descripcioncorte.talla30}",  :size => 8
			end
			
			if descripcioncorte.talla32 == 0 
					
			    elsif 
					text "Talla 32: #{descripcioncorte.talla32}",  :size => 8
			end
			
				if descripcioncorte.talla34 == 0 
				
		    elsif 
				text "Talla 34: #{descripcioncorte.talla34}",  :size => 8
			end
			
			if descripcioncorte.talla36 == 0 
					
			    elsif 
					text "Talla 36: #{descripcioncorte.talla36}",  :size => 8
			end
			
		move_down 5
			
		move_up 15
			
			text "Color: #{descripcioncorte.color.colornombre rescue nil}",  :size => 8,:style => :bold,:align => :right
		  
			
			text "Total Color: #{descripcioncorte.tallasuma}", :size => 10,:style => :bold,:align => :right
			
			
		move_up 3
			
			stroke_horizontal_rule	
		
		move_down 3
		  
		  end
		
	end
	