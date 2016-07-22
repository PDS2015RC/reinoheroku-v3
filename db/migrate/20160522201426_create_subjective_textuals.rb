class CreateSubjectiveTextuals < ActiveRecord::Migration
  def change
    create_table :subjective_textuals do |t|
      t.string :lesson
      t.string :statement
      t.text :answer

      t.timestamps null: false
    end
  end
end
