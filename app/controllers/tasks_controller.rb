class TasksController < ApplicationController
  

# GET /tasks
  def index
    @tasks = Task.all 

  end

# GET /tasks/:id
  def show
    @task = Task.find(params[:id])

  end

 # GET /tasks/new
  def new
    @task = Task.new
  end

 # POST /tasks
  def create
     @task = Task.new(params[:task])
     @task.save
     # Will raise ActiveModel::ForbiddenAttributesError
  end

   # GET /tasks/:id/edit
  def edit
    @task = Task.find(params[:id])
    
  end

 # PATCH /tasks/:id
  def update
    @task = Task.find(params[:id])
    @task.update(params[:task])
    # Will raise ActiveModel::ForbiddenAttributesError
  end

 # DELETE /tasks/:id
  def destroy
    @task = Task.find(params[:id])
    @task.destory
  end


end
