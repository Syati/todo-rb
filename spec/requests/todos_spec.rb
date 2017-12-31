# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Todos', type: :request do
  let(:user) { create(:user) }
  before {
    sign_in create(:user)
  }

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

  describe 'Get /todos/:id/edit' do
    let(:todo) { create(:todo) }
    subject { get "/todos/#{todo.id}/edit" }

    it { is_expected.to render_template(:edit)}
  end

end
