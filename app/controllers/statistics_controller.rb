class StatisticsController < ApplicationController
  def create
    @statistic = Statistic.new(statistic_params)
    @statistic.team_id = params[:team_id]
    @statistic.game_id = params[:game_id]
    if @statistic.save
      redirect_to tournament_game_path(params[:tournament_id], params[:game_id])
    end
  end

  def destroy
  end

  private

  def statistic_params
    params.require(:statistic).permit(:user_id, :action_id)
  end
end
