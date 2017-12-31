# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Todo, type: :model do
  it 'is invalid without a title' do
    todo = Todo.new
    expect(todo.valid?).to be false
    expect(todo.errors[:title]).to include('を入力してください')
  end

  it 'has a default status active' do
    todo = Todo.new
    expect(todo[:status]).to eq('active')
  end

  it 'is valid with empty description' do
    todo = Todo.new(title: 'test')
    expect(todo.valid?).to be true
  end
end
