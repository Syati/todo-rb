# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Todos', type: :request do
  describe 'Get /todos' do
    it 'render ' do
      get '/todos'
      expect(response).to render_template(:index)
    end
  end

  describe 'Get /todos/:id' do
    it 'render todos/:id' do
      todo = create(:todo)
      get "/todos/#{todo.id}"
      expect(response).to render_template(:show)
    end
  end
end
