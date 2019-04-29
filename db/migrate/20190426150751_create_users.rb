class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :level, :default => 1
      t.integer :experience, :default => 0
      t.string :friend_code
      t.integer :highest_combo, :default => 0
      t.integer :highest_score, :default => 0
      t.string :password_digest

      t.timestamps
    end
  end
end
