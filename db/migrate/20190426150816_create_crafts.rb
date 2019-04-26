class CreateCrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :crafts do |t|
      t.string :name
      t.integer :req_score
      t.integer :damage

      t.timestamps
    end
  end
end
