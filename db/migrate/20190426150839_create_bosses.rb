class CreateBosses < ActiveRecord::Migration[5.2]
  def change
    create_table :bosses do |t|

      t.timestamps
    end
  end
end
