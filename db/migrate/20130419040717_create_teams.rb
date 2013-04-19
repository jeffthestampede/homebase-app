class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :sport
      t.string :league
      t.string :name
      t.integer :espn_id

      t.timestamps
    end
  end
end
