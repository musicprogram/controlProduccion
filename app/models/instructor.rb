class Instructor < ActiveRecord::Base
    has_attached_file :imagen, styles: { medium: '200x200>', thumb: '48x48>' }
    validates_attachment_content_type :imagen, :content_type => /\Aimage\/.*\Z/
    belongs_to :cuadroproduccion
end
