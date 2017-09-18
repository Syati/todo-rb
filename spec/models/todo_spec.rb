# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Todo, type: :model do
  it 'is invalid without a title' do
    todo = Todo.new
    todo.valid?
    expect(todo.errors[:title]).to include('を入力してください')
  end

  it 'is invalid without a status' do
    todo = Todo.new(title: 'test')
    todo.valid?
    expect(todo.errors[:status]).to include('を入力してください')
  end

  it 'has a default status active' do
    todo = Todo.new
    expect(todo[:status]).to eq('active')
  end
end
