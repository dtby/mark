class ChangeTypeForGrade < ActiveRecord::Migration
  def change
  	change_column :grades, :target, :float
  	change_column :grades, :content, :float
  	change_column :grades, :plan, :float
  	change_column :grades, :express, :float
  end
end
