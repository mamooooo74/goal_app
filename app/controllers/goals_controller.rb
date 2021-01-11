class GoalsController < ApplicationController

  def new
    @goal = Goal.new

  end

  def create
    @goal = current_user.goals.build(goal_params)
    
    if @goal.save
      redirect_to root_path
    else
      render 'new'
    end
    
  end


  private

    def goal_params
      params.require(:goal).permit(:title, :content)
    end



end




