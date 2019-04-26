class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references :player1
      t.references :player2
      t.references :player3
      t.references :player4

      t.references :match

      t.timestamps
    end
  end
end
