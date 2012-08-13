class TeamsController < ApplicationController

  def index

  end

  def new
    @team = Team.new
      5.times { @team.representatives.build }
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
  end

end
