require 'rails_helper'

feature 'Test #0', js:true do

    context 'Checking the steps of Test #0' do
        scenario 'Visit the page of Test#0' do
            visit '/pages/test_0'
        end
    end
        scenario 'Checking if I am on Test #0 page' do
            expect('/pages/test_0')
                have_text('Test #0 - the basics')
        end
        scenario 'Clicking Next button' do
            visit('/pages/test_0')
            click_on('Next')
        end
        scenario 'Checking if I am on Test #1 page' do
            expect('/pages/test_1')
                have_content('Test #1 - scoping')
        end
end