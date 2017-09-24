# frozen_string_literal: true
class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end
end
