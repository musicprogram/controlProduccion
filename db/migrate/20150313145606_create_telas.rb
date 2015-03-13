class CreateTelas < ActiveRecord::Migration
  def change
    create_table :telas do |t|
      t.string :tela

      t.timestamps
    end
  end
end
