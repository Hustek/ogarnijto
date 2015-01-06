class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nick
      t.string :password_digest
      t.string :avatar
      t.string :mail
      t.integer :house_id

      t.timestamps
    end
  end
end
