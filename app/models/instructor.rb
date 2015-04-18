class Instructor < ActiveRecord::Base
    
    belongs_to :cuadroproduccion
    belongs_to :nombre

end
