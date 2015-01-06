class CreateUtilities < ActiveRecord::Migration
  def change
    create_table :utilities do |t|
      t.string :fixed
      t.string :variable

      t.timestamps
    end
  end
end
