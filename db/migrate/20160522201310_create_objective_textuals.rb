class CreateObjectiveTextuals < ActiveRecord::Migration
  def change
    create_table :objective_textuals do |t|
      t.string :lesson
      t.string :statement
      t.string :a
      t.string :b
      t.string :c
      t.string :d

      t.timestamps null: false
    end
  end
end
