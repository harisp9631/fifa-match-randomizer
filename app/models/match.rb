class Match < ApplicationRecord
  enum result: [ :tie, :home, :away ]

  belongs_to :home_club, class_name: 'Club'
  belongs_to :away_club, class_name: 'Club'

  after_create :calculate_winner

  def calculate_winner
    self.result = 'tie' if home_result == away_result
    self.result = 'home' if home_result > away_result
    self.result = 'away' if home_result < away_result
    self.save!
  end
end
