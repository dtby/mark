class AddPhoneToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :phone, :string
  end
end
