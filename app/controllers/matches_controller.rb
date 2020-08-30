class MatchesController < ApplicationController
  def create
    @match = Match.create(match_params)
    redirect_to :root
  end

  def match_params
    params.require(:match).permit(:home_club_id, :away_club_id, :home_result, :away_result)
  end
end
