class RepresentativesController < ApplicationController


  def index
  end

  def new
    @representative = Representative.new
  end

  def create
    audit "rep create controller triggered"
    audit params
    @team = Team.find(params[:team_id])
    @representative = @team.representatives.build(params[:representative])
    @representative.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
