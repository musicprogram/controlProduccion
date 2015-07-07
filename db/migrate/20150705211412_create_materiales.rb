class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.float :anchom
      t.float :largotrazom
      t.references :tela, index: true
      t.float :largotendidom
      t.float :capasm
      t.float :vecestrazom
      t.float :cantidad
      t.float :promedio
      t.float :totalmetros  
      t.references :ordenproduccion, index: true
      t.timestamps
    end
  end
end
