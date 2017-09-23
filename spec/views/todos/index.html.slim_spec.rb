# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'todos/index.html.slim', type: :view do
  it 'render about' do
    assign(:todos, [
             create(:todo)
           ])
    render
    assert_select 'h1', text: 'Todos'
    assert_select 'tbody>tr', 1
  end
end
