class TasksController < ApplicationController

  # 一覧表示するためのアクション
  def index
    @tasks = Task.all
  end

  # 新規登録するためのアクション
  def new
    @task = Task.new
  end   

  # 更新するためのアクション
  def create
    Task.create(task_params)
  end

  # データベースに登録するデータを制限するためのParameterStrongの記載
  private
  def task_params
    params.require(:task).permit(:title, :content)
  end
end
