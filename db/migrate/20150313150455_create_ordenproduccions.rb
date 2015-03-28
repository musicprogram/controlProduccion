class CreateOrdenproduccions < ActiveRecord::Migration
  def change
    create_table :ordenproduccions do |t|
      t.date :fechaprogramacion
      t.references :cliente, index: true
      t.text :descripcion
      t.string :referencia
      t.references :corte
      t.string :ancho
      t.references :tela, index: true
      t.float :largotrazo
      t.float :vecestrazo
      t.string :largotendido
      t.float :promedio
      t.string :cantidad
      t.string :responsablecorte
      t.float :totalmetros
      t.string :tiqueteada
      t.integer :capas
      t.references :prenda, index: true
      

      t.timestamps
    end
  end
end
