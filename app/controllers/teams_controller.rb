class TeamsController < ApplicationController

  def create
    league = League.find(params[:league_id])
    @team = league.teams.build(params[:team])
    @team.user_id = current_user.id
    if @team.save
      redirect_to league_teams_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to root_path
  end

  def return_reps
    @reps = Representative.order(:lastname).where("lastname like ?", "%#{params[:term]}%")
    render json: @reps.map(&:lastname)
  end

end
