require 'rails_helper'

RSpec.describe "static_pages/home", type: :view do
  it 'render home' do
    render
    assert_select 'h1', text: 'home'
  end
end
