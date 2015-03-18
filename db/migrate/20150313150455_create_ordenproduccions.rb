class CreateOrdenproduccions < ActiveRecord::Migration
  def change
    create_table :ordenproduccions do |t|
      t.datetime :fechaprogramacion
      t.string :ordennumero
      t.references :cliente, index: true
      t.text :descripcion
      t.string :referencia
      t.references :corte
      t.string :ancho
      t.references :tela, index: true
      t.integer :largotrazo
      t.integer :vecestrazo
      t.string :largotendido
      t.integer :promedio
      t.string :cantidad
      t.string :promediounidad
      t.string :totalmetros
      t.string :tiqueteada
      t.references :prenda, index: true

      t.timestamps
    end
  end
end
