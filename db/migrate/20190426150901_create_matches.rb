class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :user
      t.integer :score

      t.timestamps
    end
  end
end
