class Nombre < ActiveRecord::Base
    has_many :instructores
    has_attached_file :avatar, styles: { medium: '200x200>', thumb: '48x48>' }
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
