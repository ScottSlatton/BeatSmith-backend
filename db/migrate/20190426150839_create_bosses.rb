class CreateBosses < ActiveRecord::Migration[5.2]
  def change
    create_table :bosses do |t|
      t.string :name
      t.integer :level, :default => 1
      t.integer :health, :default => 1
      t.integer :exp_share, :default => 1

      t.timestamps
    end
  end
end
