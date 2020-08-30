class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :home_club, index: true, foreign_key: { to_table: :clubs }
      t.references :away_club, index: true, foreign_key: { to_table: :clubs }
      t.integer :home_result
      t.integer :away_result
      t.timestamps
    end
  end
end
