class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cliente

      t.timestamps
    end
  end
end
