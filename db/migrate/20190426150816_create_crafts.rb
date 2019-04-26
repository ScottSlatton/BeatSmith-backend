class CreateCrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :crafts do |t|

      t.timestamps
    end
  end
end
