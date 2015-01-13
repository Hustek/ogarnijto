class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :private
      t.date :date
      t.boolean :finished
      t.integer :taskable_id
      t.string :taskable

      t.timestamps
    end
    add_index :tasks, :taskable_id
  end
end
