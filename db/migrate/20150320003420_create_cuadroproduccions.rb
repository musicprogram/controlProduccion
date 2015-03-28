class CreateCuadroproduccions < ActiveRecord::Migration
  def change
    create_table :cuadroproduccions do |t|
      t.date :fechatrazo
      t.date :anchotrazo
      t.date :fechacorte
      t.date :fechaentradabodega
      t.date :fechaentregamodulo
      t.references :descripcioncorte, index: true
      t.references :modulo, index: true

      t.timestamps
    end
  end
end
