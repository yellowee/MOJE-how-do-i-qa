require 'rails_helper'

feature 'Test #4', js:true do

    context 'Checking steps of Test #4' do
        scenario 'AJAX' do
            visit('/pages/test_4')
            click_on(id: 'test-4-ajax-btn')
            expect(id:'ajax-result')
                have_text('This is answer from the server')
        end
    end
end