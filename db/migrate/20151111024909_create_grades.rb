class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.int :target
      t.int :content
      t.int :plan
      t.int :express
      t.references :judge, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
