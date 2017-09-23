# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Todos', type: :request do
  describe 'Get /todos' do
    it 'render todos' do
      get '/todos'
      expect(response).to render_template(:index)
    end
  end
end
