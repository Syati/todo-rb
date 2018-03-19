# frozen_string_literal: true

class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to todos_path
    else
      render 'new'
    end
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    render 'show' if @todo.update_attributes(todo_params)
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :status, :description)
  end
end
