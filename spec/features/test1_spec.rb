require 'rails_helper'

feature 'Test #1', js:true do

    context 'Checking the steps of Test #1' do

        scenario 'Clicking the correct Next button' do
            visit('/pages/test_1')
                within(class:'text-right') do
                    click_on('Next')
                end
        end   

        scenario 'Checking if I am on Test #2 page' do
            expect('/pages/test_2')
                have_content('Test #2 - forms')
        end
    end
end