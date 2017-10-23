class AddAvatarsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :avatars, :json
  end
end
