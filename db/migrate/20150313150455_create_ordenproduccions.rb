class CreateOrdenproduccions < ActiveRecord::Migration
  def change
    create_table :ordenproduccions do |t|
      t.datetime :fechaprogramacion
      t.string :ordennumero
      t.references :cliente, index: true
      t.text :descripcion
      t.string :referencia
      t.string :corte
      t.string :ancho
      t.references :tela, index: true
      t.string :largotrazo
      t.string :largotendido
      t.string :numeropaquetes
      t.string :cantidad
      t.string :promediounidad
      t.string :totalmetros
      t.string :corte
      t.string :tiqueteada
      t.references :prenda, index: true

      t.timestamps
    end
  end
end
