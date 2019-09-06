class ActionsController < ApplicationController
    before_action :authenticate_user!
    
    def update
        #@task = Task.find(params[:task_id])
        #@usuario = User.find(current_user.id)
        #@action = Action.find(task_id = @task.id, user_id = params[:user_id])
        #debugger
        @action = Action.find(params[:task_id])
        if @action.finish == false
            @action.update(finish: true)
        else
            @action.update(finish: false)
        end 
        redirect_to tasks_path
    end
end
