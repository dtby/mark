class AddNameToJudges < ActiveRecord::Migration
  def change
    add_column :judges, :name, :string
  end
end
