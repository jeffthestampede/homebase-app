class AddUserTeamChoices < ActiveRecord::Migration
  def change
    add_column :users, :team1, :string
    add_column :users, :team2, :string
    add_column :users, :team3, :string
  end
end
