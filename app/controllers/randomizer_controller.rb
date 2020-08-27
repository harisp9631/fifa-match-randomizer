class RandomizerController < ApplicationController
  def index

  end

  def create
    @match = Match.new(Club.where(league_id: league_ids_from_params).order(Arel.sql('RANDOM()')).limit(2))
    respond_to do |format|
      format.js {}
      format.html {}
    end
  end


  private

  def league_ids_from_params
    params[:league_ids].split(',')
  end
end
