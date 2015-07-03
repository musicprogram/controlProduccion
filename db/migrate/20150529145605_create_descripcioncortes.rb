class CreateDescripcioncortes < ActiveRecord::Migration
  def change
    create_table :descripcioncortes do |t|
      t.references :color, index: true
      t.integer :tallaxs
      t.integer :tallas
      t.integer :tallam
      t.integer :tallal
      t.integer :tallaxl
      t.integer :talla6
      t.integer :talla8
      t.integer :talla10
      t.integer :talla12
      t.integer :talla14
      t.integer :talla28
      t.integer :talla30
      t.integer :talla32
      t.integer :talla34
      t.integer :talla36
      t.integer :tallasuma
      t.references :ordenproduccion, index: true

      t.timestamps
    end
  end
end
