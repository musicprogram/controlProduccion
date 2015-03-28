class CreateOrdenterceros < ActiveRecord::Migration
  def change
    create_table :ordenterceros do |t|
      t.string :referencia
      t.string :numeroop
      t.string :nombreproveedor
      t.string :direccion
      t.string :telefono
      t.string :email
      t.date :fechaingreso
      t.date :fechasalida
      t.string :responsable
      t.references :proceso, index: true
      t.string :cantidad
      t.string :pieza
      t.references :color, index: true
      t.string :transportador
      t.integer :totalunidad
      t.text :observacion

      t.timestamps
    end
  end
end
