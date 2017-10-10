class AddColumnDescriptionToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :description, :text, null: false, after: :status
  end
end
