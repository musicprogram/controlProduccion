class AddAttachmentAvatarToNombres < ActiveRecord::Migration
  def self.up
    change_table :nombres do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :nombres, :avatar
  end
end
