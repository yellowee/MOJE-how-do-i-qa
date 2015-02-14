require 'rails_helper'

feature 'Test #1' do

  scenario 'user can transition to next page' do
    visit test_1_pages_path
    expect(page).to have_content 'Test #1'
    within '#footer' do
      click_on 'Next'
    end
    expect(page).to have_content 'Test #2'
  end

  scenario 'clicking the other button does nothing' do
    visit test_1_pages_path
    expect(page).to have_content 'Test #1'
    within '#test' do
      click_on 'Next'
    end
    expect(page).to have_content 'Test #1'
  end

end
