class AddRoomIdToUtilities < ActiveRecord::Migration
  def change
    remove_column :utilities, :room_id, :integer
  end
end
