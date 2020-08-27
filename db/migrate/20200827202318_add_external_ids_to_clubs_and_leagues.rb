class AddExternalIdsToClubsAndLeagues < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :external_id, :integer, index: true
    add_column :leagues, :external_id, :integer, index: true
  end
end
