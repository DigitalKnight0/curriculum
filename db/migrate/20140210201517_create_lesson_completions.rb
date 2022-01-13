class CreateLessonCompletions < ActiveRecord::Migration[5.0]
  def change
    create_table :lesson_completions do |t|
      t.integer :lesson_id
      t.integer :student_id
      t.timestamps
    end

    add_index :lesson_completions, %i[lesson_id student_id], unique: true
  end
end
