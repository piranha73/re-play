class TeamsController < ApplicationController
  #before_action :find_team, only: [:show, :new, :edit, :destroy]

  def new
    @team = Team.new
  end

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def create

    @team = Team.new(team_params)
    @team.logo = "team_logos/#{params["image"].to_i + 1}.png"


    if @team.save
      JoinTeamPlayer.create(user: current_user, team: @team)
      redirect_to team_path(@team)
    else
      render 'new'
    end
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to team_path(@team), notice: 'Team was successfully updated.'
    else
      render :edit
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

  private

  # def find_team
   # @team = Team.find(params[:id])
  #end

  def team_params
    params.require(:team).permit(:name)
  end
end
