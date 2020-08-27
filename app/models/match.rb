class Match
  attr_reader :home, :away

  def initialize(collection)
    @home = collection.first
    @away = collection.second
  end

  def summary
    "#{home.name} (#{home.league.name}) - #{away.name} (#{away.league.name})"
  end
end
