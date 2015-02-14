require 'rails_helper'

feature 'Test #0' do

  scenario 'user can transition to next page' do
    visit test_0_pages_path
    expect(page).to have_content 'Test #0'
    click_on 'Next'
    expect(page).to have_content 'Test #1'
  end

end
