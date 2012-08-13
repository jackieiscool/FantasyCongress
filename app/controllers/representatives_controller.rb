class RepresentativesController < ApplicationController
  def index
  end

  def new
    @representative = Representative.new
  end

  def create
    @representative = Representative.new(params[:representative])
    @representative.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
