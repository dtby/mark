class AddCollegeToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :college, :string
  end
end
