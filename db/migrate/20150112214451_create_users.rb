class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nick
      t.string :avatar
      t.string :email
      t.string :password_digest
      t.integer :house_id

      t.timestamps
    end
  end
end
