class CreateAdventurers < ActiveRecord::Migration[5.2]
  def change
    create_table :adventurers do |t|
      t.string :name
      t.integer :level, :default => 1
      t.integer :attack, :default => 1
      t.integer :armor, :default => 1
      t.references :user, index: { unique: true }, foreign_key: true

      
      

      t.timestamps
    end
  end
end
