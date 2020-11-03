class TeamsController < ApplicationController
  before_action find_team, only: [:show, :new, :edit, :destroy]

  def new
  end

  def index
  end

  def show
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def find_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name)
  end
end
