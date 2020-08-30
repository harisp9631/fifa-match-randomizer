class League < ApplicationRecord
  BIG_LEAGUES_IDS = [4,8,10,15].freeze

  has_many :clubs

  def self.get_samples_without_four_big_leagues(amount)
    ids = self.where.not(id: BIG_LEAGUES_IDS).pluck(:id).sample(amount)
    self.where(id: ids)
  end


  def self.get_four_big_leagues
    self.where(id: BIG_LEAGUES_IDS)
  end
end
