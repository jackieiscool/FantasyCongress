class TeamsController < ApplicationController

  def index

  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team])
    @team.user_id = current_user.id
    if @team.save
      redirect_to teams_path
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
