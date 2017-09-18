require 'rails_helper'

RSpec.describe "static_pages/company", type: :view do
  it 'render company' do
    render
    assert_select 'h1', text: 'Company'
  end
end
