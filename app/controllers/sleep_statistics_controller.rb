class SleepStatisticsController < ApplicationController
  def show
    @sleep_statistic = Sleep_statistic.find(params[:id])
  end
end