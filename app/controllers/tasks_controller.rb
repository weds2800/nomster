class TasksController < ApplicationController
  def index
    @tasks = Task.all.paginate(page: params[:page], per-page: 5)
end
