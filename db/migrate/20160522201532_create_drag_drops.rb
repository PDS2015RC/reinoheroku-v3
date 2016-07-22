class CreateDragDrops < ActiveRecord::Migration
  def change
    create_table :drag_drops do |t|
      t.string :lesson
      t.string :statement
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :atitle
      t.string :btitle
      t.string :ctitle
      t.string :dtitle

      t.timestamps null: false
    end
  end
end
