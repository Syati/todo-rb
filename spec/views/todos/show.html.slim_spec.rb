# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'todos/show.html.slim', type: :view do
  it 'render show' do
    todo = create(:todo)
    assign(:todo, todo)

    render

    assert_select '.todo-content-title', text: todo.title
    assert_select '.todo-content-status', text: todo.status
    assert_select '.todo-content-description', text: todo.description
  end
end
