class Club < ApplicationRecord
  belongs_to :league

  def self.get_two_random_from_leagues(league_ids)
    ids = self.where(league_id: league_ids).pluck(:id).sample(2)
    self.where(id: ids)
  end
end
