class TasksController < ApplicationController

  # 一覧表示するためのアクション
  def index
    @tasks= Task.all
  end

  # 新規登録するためのアクション
  def new
    @task = Task.new
  end   

  # 更新するためのアクション
  def create
    Task.create(task_params)
  end

  # 詳細を表示するためのアクション
  def show
    @task = Task.find(params[:id])
  end

  # 編集をするためのアクション
  def edit
    @task = Task.find(params[:id])
  end

  # 更新するためのアクション
  def update
    task = Task.find(params[:id])
    task.update(task_params)
  end

  # 削除するためのアクション
  def destroy
    task = Task.find(params[:id])
    task.destroy
  end

  # データベースに登録するデータを制限するためのParameterStrongの記載
  private
  def task_params
    params.require(:task).permit(:title, :content)
  end
end
