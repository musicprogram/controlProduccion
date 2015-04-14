class Cliente < ActiveRecord::Base
	
    validates :clientenombre, :presence =>true
    has_many :ordenproduccions
    
end
