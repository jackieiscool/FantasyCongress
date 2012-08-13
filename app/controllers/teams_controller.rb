class TeamsController < ApplicationController
  def index
  end

  def new
    @team = Team.new
      5.times { @team.representatives.build }
  end

  def create
    @team = Team.new(params[:poll])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
