class CreateRecruits < ActiveRecord::Migration[5.2]
  def change
    create_table :recruits do |t|
      t.integer :user_id
      t.integer :adventurer_id

      t.timestamps
    end
  end
end
