class CreatePrendas < ActiveRecord::Migration
  def change
    create_table :prendas do |t|
      t.string :prenda

      t.timestamps
    end
  end
end
