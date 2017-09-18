require 'rails_helper'

RSpec.describe "static_pages/about", type: :view do
  it 'render about' do
    render
    assert_select 'h1', text: 'About'
  end
end
