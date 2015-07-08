class Color < ActiveRecord::Base
    
	has_many :descripcioncortes
	has_many :materiales
	
end
