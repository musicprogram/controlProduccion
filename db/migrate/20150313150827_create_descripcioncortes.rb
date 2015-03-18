class CreateDescripcioncortes < ActiveRecord::Migration
  def change
    create_table :descripcioncortes do |t|
      t.integer :tallacantidad
      t.integer :capas
      t.references :color
      t.integer :tallaxs
      t.integer :tallas
      t.integer :tallam
      t.integer :tallal
      t.integer :tallaxl
      t.integer :tallasuma
      t.references :ordenproduccion, index: true

      t.timestamps
    end
  end
end
