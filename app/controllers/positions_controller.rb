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
    # team_id = current_team.id
    # rep_id = rep.find_by_lastname.id
  end

  def index
  end

  def destroy

  end

  def index
  end

end
