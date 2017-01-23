class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :entry
      t.string :destination

      t.timestamps
    end
  end
end
