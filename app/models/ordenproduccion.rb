class Ordenproduccion < ActiveRecord::Base
  

  
 
  belongs_to :cliente
  belongs_to :tela
  belongs_to :prenda
  belongs_to :corte
  has_many :descripcioncortes, dependent: :destroy


  def self.search(search, page)
      where(['upper(id) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("id")
  end



   before_validation :sumas

    def sumas

      
   
    
    if largotrazo != nil && vecestrazo != nil         
      self.promedio = largotrazo / vecestrazo
      self.totalmetros = largotrazo * capas
    end  
    
      
  
    end



        

end

