class CreateCortes < ActiveRecord::Migration
  def change
    create_table :cortes do |t|
      t.string :cortenombre

      t.timestamps
    end
  end
end
