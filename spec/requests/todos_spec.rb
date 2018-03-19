# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Todos', type: :request do
  let(:user) { create(:user) }
  before do
    sign_in create(:user)
  end

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

    it { is_expected.to render_template(:edit) }
  end

  describe 'Get /todos/new' do
    subject { get "/todos/new" }
    it { is_expected.to render_template(:new) }
  end

  describe 'Update /todos/:id' do
    let(:todo) { create(:todo) }
    let(:attr) { { title: 'New todo title', status: 'active', description: 'New description' } }
    subject { put "/todos/#{todo.id}", params: { id: todo.id, todo: attr } }

    it { is_expected.to render_template(:show) }

    it 'includes the change of update in body' do
      subject
      expect(response.body).to include('New todo title')
      expect(response.body).to include('New description')
    end
  end
end
