class TasksController < ApplicationController
  def index
    @tasks = Task.all
    if signed_in?
      @todos = current_user.actions
    end
  end

  def show
    @task = Task.find(params[:id])
    @ultimos = @task.actions.order('updated_at DESC').first(5)
    @usuarios = @task.actions
  end
end