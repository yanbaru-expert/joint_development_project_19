class TasksController < ApplicationController

  # 新規登録するためのアクション
  def new
    @task = Task.new
  end   

  # 更新するためのアクション
  def create
    Task.create(user_params)
  end

  # データベースに登録するデータを制限するためのParameterStrongの記載
  private
  def task_params
    params.require(:task).permit(:title, :content)
  end
end
