class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
    add_reference :tasks, :admin_user, foreign_key: true
  end
end
