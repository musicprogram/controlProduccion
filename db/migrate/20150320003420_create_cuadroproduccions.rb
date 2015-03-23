class CreateCuadroproduccions < ActiveRecord::Migration
  def change
    create_table :cuadroproduccions do |t|
      t.datetime :fechatrazo
      t.datetime :anchotrazo
      t.datetime :fechacorte
      t.datetime :fechaentradabodega
      t.datetime :fechaentregamodulo
      t.references :descripcioncorte, index: true
      t.references :modulo, index: true

      t.timestamps
    end
  end
end
