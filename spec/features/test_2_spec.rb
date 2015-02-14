require 'rails_helper'

feature 'Test #2' do

  scenario 'user sees no submitted data at first' do
    visit test_2_pages_path
    expect(page).to have_content 'Data will appear here after submission.'
  end

  scenario 'user can fill in with correct data and see success' do
    visit test_2_pages_path
    expect(page).to have_content 'Test #2'
    fill_in 'Example textfield', with: 'wedwedwed'
    choose 'Example radiobutton opt 1'
    check 'Example checkbox'
    select 'Opt 2', from: 'Example select'
    click_button 'Submit'
    expect(page).to have_content 'Submitted successfully'
    expect(page).not_to have_content 'Data will appear here after submission.'
    expect(page).to have_content 'Submitted text: wedwedwed'
    expect(page).to have_content 'Select option picked: Opt 2'
    expect(page).to have_content 'Checkbox checked: 1'
    expect(page).to have_content 'Radio option picked: opt 1'
  end

  scenario 'user can fill in with incorrect data and see error' do
    visit test_2_pages_path
    expect(page).to have_content 'Test #2'
    click_button 'Submit'
    expect(page).to have_content 'Some data was missing'
    expect(page).not_to have_content 'Data will appear here after submission.'
    expect(page).to have_content 'Submitted text:'
    expect(page).to have_content 'Select option picked: Opt 1'
    expect(page).to have_content 'Checkbox checked:'
    expect(page).to have_content 'Radio option picked:'
  end

end
