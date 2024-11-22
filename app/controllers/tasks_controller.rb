class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end

  def create
    puts(task_params)
    @task = Task.new(task_params)

    @task.team = Team.find(params[:task][:team_id])
    @task.customer = Customer.find(params[:task][:customer_id])

    if @task.save
      redirect_to tasks_path, notice: 'Task was successfully created.'
    else
      flash.now[:alert] = 'Task was not created.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(
      :title,
      :description,
      :due_date,
      :status,
      :team_id,
      :customer_id,
    )
  end
end
