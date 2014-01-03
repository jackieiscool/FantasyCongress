class LeaguesController < ApplicationController

  def index
    @leagues = League.all
  end

  def show
    @league = League.find(params[:id])
    @teams = @league.teams
    @team = Team.new
  end

  def new
    @league = League.new
  end

  def create
    @league = League.new(params[:league])
    if @league.save
      redirect_to @league
    else
      flash[:errors] = @league.errors.full_messages
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
