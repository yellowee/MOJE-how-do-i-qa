require 'rails_helper'

feature 'Test #3' do

  scenario 'user can highlight row', js: true do
    visit test_3_pages_path
    expect(page).to have_content 'Test #3'
    first('table tr').click
    expect(page).to have_css 'tr.highlighted'
  end

end
