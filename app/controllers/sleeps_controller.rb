class SleepsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_sleep, only: [:show, :edit, :update, :destroy]

  def index
    @sleeps = Sleep.all
    @average_sleep_duration = calculate_average_sleep_duration
  end

  def show
  end

  def new
    @sleep = Sleep.new
  end

  def create
    @sleep = Sleep.new(sleep_params)
    if @sleep.save
      redirect_to @sleep
    else
      render :new
    end
  end

  def edit
  end

  def update
    sleep = Sleep.find(params[:id])
    if sleep.update(sleep_params)
      redirect_to new_sleep_path
    else
      render :edit
    end
  end

  def destroy
    sleep = Sleep.find(params[:id])
    sleep.destroy
    redirect_to root_path
  end

  private

  def set_sleep
    @sleep = Sleep.find(params[:id])
  end

  def sleep_params
    params.require(:sleep).permit(:start_time, :end_time, :quality, :memo).merge(user_id: current_user.id)
  end

  def calculate_average_sleep_duration
    total_duration = @sleeps.sum { |sleep| (sleep.end_time - sleep.start_time) / 1.hour }
    total_duration / @sleeps.size
  end


end

