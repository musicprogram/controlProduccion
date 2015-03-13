class CreateTallas < ActiveRecord::Migration
  def change
    create_table :tallas do |t|
      t.string :talla

      t.timestamps
    end
  end
end
