class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.float :anchom
      t.integer :largotrazom
      t.references :tela, index: true
      t.float :largotendidom
      t.integer :capasm
      t.float :vecestrazom
      t.float :cantidad
      t.references :ordenproduccion, index: true

      t.timestamps
    end
  end
end
