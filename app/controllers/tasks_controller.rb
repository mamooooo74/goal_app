class TasksController < ApplicationController
  def create
    task = Task.new(task_params)
    task.save
    redirect_to goal_path(task.goal.id)
  end

  def destroy
    task = Task.find(params[:id]).destroy
    redirect_to goal_path(params[:goal_id])
  end





  private

  def task_params
    params.permit(:content, :goal_id)
  end


end
