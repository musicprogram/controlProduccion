class AddAttachmentImagenToInstructores < ActiveRecord::Migration
  def self.up
    change_table :instructores do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :instructores, :imagen
  end
end
