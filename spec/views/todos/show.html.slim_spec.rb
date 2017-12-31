# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'todos/show.html.slim', type: :view do
  it 'render show' do
    todo = create(:todo)
    assign(:todo, todo)
    render

    assert_select '.todo-content-title', value: todo.title
    assert_select '.todo-content-status', value: todo.status
    assert_select '.todo-content-description', value: todo.description
  end
end