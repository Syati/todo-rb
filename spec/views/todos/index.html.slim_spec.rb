# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'todos/index.html.slim', type: :view do
  it 'render index' do
    todo = create(:todo)
    assign(:todos, [todo])

    render

    assert_select 'h1', text: 'Todos'
    assert_select 'tbody>tr', 1
    assert_select 'td a[href=?]', todo_path(todo), text: todo.title
    assert_select 'td', text: todo.status
  end
end
