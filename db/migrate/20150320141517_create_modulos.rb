class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :modulonombre

      t.timestamps
    end
  end
end
