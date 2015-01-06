class RemoveRoomIdFromUtilities < ActiveRecord::Migration
  class AddRoomIdToUtilities < ActiveRecord::Migration
    def change
      remove_column :utilities, :room_id
    end
  end

end
