class RandomizerController < ApplicationController
  def index
    @matches = Match.all.order(created_at: :asc)
    @kreko_won = @matches.where('home_result > away_result').count
    @pendzo_won = @matches.where('away_result > home_result').count
    @random_leagues = League.get_samples_without_four_big_leagues(3)
    respond_to do |format|
      format.js {}
      format.html {}
    end
  end

  def create
    random_clubs = get_random_clubs

    @match = Match.new(home_club: random_clubs.first, away_club: random_clubs.second)
    respond_to do |format|
      format.js {}
      format.html {}
    end
  end


  private

  def league_ids_from_params
    params[:league_ids].split(',')
  end


  def get_random_clubs
    case params[:random_type]
    when 'four_big_clubs'
      random_clubs = Club.get_two_random_from_leagues(League.get_four_big_leagues.ids)
    when 'random_leagues'
      random_clubs = Club.get_two_random_from_leagues(league_ids_from_params)
    end
    random_clubs
  end
end
