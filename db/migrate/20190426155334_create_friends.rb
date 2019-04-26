class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.references :friender
      t.references :friended

      t.timestamps
    end
  end
end
