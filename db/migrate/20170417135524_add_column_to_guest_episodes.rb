class AddColumnToGuestEpisodes < ActiveRecord::Migration[5.0]
  def change
    add_column :guest_episodes, :rating, :integer
  end
end
