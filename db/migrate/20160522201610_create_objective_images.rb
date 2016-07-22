class CreateObjectiveImages < ActiveRecord::Migration
  def change
    create_table :objective_images do |t|
      t.string :lesson
      t.string :statement
      t.string :aimg
      t.string :bimg
      t.string :cimg

      t.timestamps null: false
    end
  end
end
