class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :title
      t.text :description
      t.references :todo_list, index: true, foreign_key: true
      t.date :due_date
      t.boolean :completed, :default => false

      t.timestamps null: false
    end
  end
end
