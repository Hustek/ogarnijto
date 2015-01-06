class CreateUtilitiesRooms < ActiveRecord::Migration
  def change
    create_table :utilities_rooms do |t|
      t.belongs_to :utility, index: true
      t.belongs_to :room, index: true
    end
  end
end
