class AddWinnerToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :result, :integer, default: 0
  end
end
