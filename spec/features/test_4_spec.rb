require 'rails_helper'

feature 'Test #4' do

  scenario 'user click button to fire ajax call that replaces text', js: true do
    visit test_4_pages_path
    expect(page).to have_content 'Test #4'
    expect(page).to have_content 'Text of this element should change after call completes.'
    click_on 'Click me to fire an AJAX call'
    expect(page).to have_content 'This is answer from the server'
  end

end
