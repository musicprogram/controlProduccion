class CreateProcesos < ActiveRecord::Migration
  def change
    create_table :procesos do |t|
      t.string :procesonombre

      t.timestamps
    end
  end
end
