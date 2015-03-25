class CreateInstructores < ActiveRecord::Migration
  def change
    create_table :instructores do |t|
      t.string :nombre
      t.datetime :fecharecibo
      t.integer :cantidad
      t.string :tallaunidad
      t.integer :primeras
      t.integer :segundas
      t.integer :totalrecibidas
      t.string :observacionescalidad
      t.datetime :fechasalidaalmacen
      t.references :cuadroproduccion, index: true

      t.timestamps
    end
      
  end
end
