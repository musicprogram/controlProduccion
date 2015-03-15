class Cliente < ActiveRecord::Base
    validates :clientenombre, :presence =>true
    has_many :ordenproduccion
end
