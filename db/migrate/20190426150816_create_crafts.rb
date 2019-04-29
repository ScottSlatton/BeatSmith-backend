class CreateCrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :crafts do |t|
      t.string :name
      t.integer :req_score, :default => 0
      t.integer :damage, :default => 0

      t.timestamps
    end
  end
end
