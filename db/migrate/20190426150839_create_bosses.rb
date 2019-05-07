class CreateBosses < ActiveRecord::Migration[5.2]
  def change
    create_table :bosses do |t|
      t.string :name
      t.integer :level, :default => 1
      t.integer :health, :default => 1
      t.integer :damage, :default => 1
      t.integer :armor, :default => 0
      t.integer :experience, :default => 1
      t.boolean :defeated, :default => false


      t.timestamps
    end
  end
end
