class PositionsController < ApplicationController

  def new
    @position = Position.new
    @team = Team.find(params[:team_id])
  end

  def create
    @position = Position.new
    @position.representative = Representative.find_by_lastname(params[:position][:lastname])
    @position.team_id = params[:team_id]
    if @position.save
      render :create
    else
      render :no_create
    end
  end

end
