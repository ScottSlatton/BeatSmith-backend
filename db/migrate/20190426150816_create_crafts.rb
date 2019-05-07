class CreateCrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :crafts do |t|
      t.string :name
      t.integer :cost, :default => 0
      t.integer :damage, :default => 0
      t.integer :armor, :default => 0
      t.string :type

      t.timestamps
    end
  end
end
