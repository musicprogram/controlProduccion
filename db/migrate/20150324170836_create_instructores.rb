class CreateInstructores < ActiveRecord::Migration
  def change
    create_table :instructores do |t|
      t.references :nombre, index: true
      t.date :fecharecibo
      t.integer :cantidad
      t.string :tallaunidad
      t.integer :primeras
      t.integer :segundas
      t.integer :totalrecibidas
      t.integer :observacionescalidad
      t.date :fechasalidaalmacen
      t.references :cuadroproduccion, index: true

      t.timestamps
    end
      
  end
end
