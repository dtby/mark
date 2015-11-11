class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :target
      t.integer :content
      t.integer :plan
      t.integer :express
      t.references :judge, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
