class GoalsController < ApplicationController
  
  before_action :move_to_root, only: [:show] 


  def show
    @goal = Goal.find(params[:id])
  end
  
  def create
    @goal = current_user.goals.build(goal_params)
    
    if @goal.save
      redirect_to goal_path(@goal)
    end
  end

  def update
    goal = Goal.find(params[:id])
    goal.update(goal_params)
    redirect_to goal_path(goal)
  end


  def comp
    goal = Goal.find(params[:id])
    goal.update(comp: true)
    redirect_to root_path
  end


  private

    def goal_params
      params.require(:goal).permit(:title, :content)
    end

    def move_to_root
      goal = Goal.find_by(id: params[:id])
      redirect_to root_path unless goal && current_user.id == goal.user_id
    end

end




