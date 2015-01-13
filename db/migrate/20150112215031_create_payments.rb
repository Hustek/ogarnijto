class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :task_id
      t.string :type
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
