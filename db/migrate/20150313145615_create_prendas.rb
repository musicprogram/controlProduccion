class CreatePrendas < ActiveRecord::Migration
  def change
    create_table :prendas do |t|
      t.string :prendanombre

      t.timestamps
    end
  end
end
