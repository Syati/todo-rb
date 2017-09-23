# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'todos/show.html.slim', type: :view do
  it 'render show' do
    todo = create(:todo)
    assign(:todo, todo)
    render
    assert_select 'h1', text: todo.title
  end
end
