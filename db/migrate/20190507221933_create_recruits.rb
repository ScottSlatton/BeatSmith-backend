class CreateRecruits < ActiveRecord::Migration[5.2]
  def change
    create_table :recruits do |t|
      t.references :user
      t.references :adventurer

      t.timestamps
    end
  end
end
