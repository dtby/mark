class ChangeTotalTypeForGrade < ActiveRecord::Migration
  def change
  	change_column :grades, :total, :float
  end
end
