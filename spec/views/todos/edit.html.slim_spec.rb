# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'todos/edit.html.slim', type: :view do
  it 'render edit' do
    todo = create(:todo)
    assign(:todo, todo)

    render

    assert_select 'form input[type="text"]', value: todo.title
    assert_select 'form select', value: todo.status
    assert_select 'form textarea', value: todo.description
  end
end
