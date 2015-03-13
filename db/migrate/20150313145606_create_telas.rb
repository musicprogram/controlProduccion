class CreateTelas < ActiveRecord::Migration
  def change
    create_table :telas do |t|
      t.string :telanombre

      t.timestamps
    end
  end
end
