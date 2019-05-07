class CreateAdventurers < ActiveRecord::Migration[5.2]
  def change
    create_table :adventurers do |t|
      t.integer :level, :default => 1
      
      

      t.timestamps
    end
  end
end
