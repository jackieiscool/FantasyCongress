class PositionsController < ApplicationController

  def new
    # audit "new positions controller triggered"
    @position = Position.new
    @team = Team.find(params[:team_id])
  end

  def create
    @position = Position.new
    @position.representative_id = Representative.find_by_lastname(params[:position][:lastname]).id
    @position.team_id = params[:team_id]
    if @position.save
      redirect_to root_path
    else
      render 'new'
    end
  end

end
