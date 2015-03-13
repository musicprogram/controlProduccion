class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :clientenombre

      t.timestamps
    end
  end
end
